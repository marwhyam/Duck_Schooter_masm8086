.MODEL SMALL
.STACK 1000H

.DATA
ScreenWidth       EQU 320    
ScreenHeight      EQU 200    
YellowColor       EQU 0Eh    
GreenColor        EQU 0Ah    
BlackColor        EQU 00h    
WhiteColor        EQU 0Fh    
DuckColor         EQU 0Ch    
gunSpeed          DW 0       
gunSize           EQU 10     
RowIndices        DW 50, 70, 90, 100, 120
NumRows           EQU 5
CurrentRowIndex   DW 0       
BulletPosX        DW 1       
BulletPosY        DW 0       
PrevBulletPosX    DW 1       
PrevBulletPosY    DW 0       
BulletActive      DB 0       
BulletSpeed       DW 2       
BulletSize        EQU 3      
gunPosX           DW (ScreenWidth - gunSize) / 2   
gunPosY           DW ScreenHeight - gunSize        
DuckPosX          DW 0       
DuckPosY          DW 20       
PrevDuckPosX      DW 0       
PrevDuckPosY      DW 20       
DuckSpeed         DW 2       
DuckMoveCounter   DW 0       
DuckMoveInterval  EQU 7       
Lives             DW 3       
Score             DW 0       

DuckShooterText   DB 'Duck Shooter', 0
LivesMsg          DB 'Lives:', 0
ScoreMsg          DB 'Score:', 0
GameOverMsg       DB 'Game Over!', 0
FinalScoreMsg     DB 'Final Score: ', 0

HitCount          DW 0       
TickCounter       DW 0       
ScoreTickCounter  DW 0       
TicksThreshold    EQU 2000    ; Approximately 18.2 ticks per second * 30 seconds
ScoreTicksThreshold EQU 500   ; Approximately 18.2 ticks per second * 2 seconds

GameOver          DB 0       

.CODE
PUBLIC start_level2

start_level2:

    MOV AX, @DATA                  
    MOV DS, AX

    MOV AX, 13h                    
    INT 10h

    MOV AX, 0A000h                 
    MOV ES, AX
    ; Draw yellow background
    MOV DI, 0
    MOV CX, ScreenWidth * ScreenHeight 
    MOV AL, GreenColor
    REP STOSB   
    ; Draw blue blocks
    MOV DI, 0
    MOV CX, ScreenWidth * ScreenHeight / 2 
    MOV AL, YellowColor
    REP STOSB                      

    ; Display initial score and lives
    CALL DisplayScoreLives

    ; Main game loop
MainLoop:
    CMP [GameOver], 1
    JE EndGameLoop
    CALL ClearPreviousDuckPosition 
    CALL ClearPreviousBulletPosition
    CALL MoveDuck                  
    CALL DrawDuck                  
    CALL Drawgun                   
    CALL Movegun                   
    CALL CheckShoot                
    CALL MoveBullet                
    CALL CheckHitDuck              
    CALL DrawBullet                
    CALL Delay                     
    CALL UpdateTimeAndScore
    CALL CheckGameOver
    JMP MainLoop                   

EndGameLoop:
    JMP EndGameLoop  ; Infinite loop to halt game execution after game over


DisplayScoreLives PROC
    ; Display "Score:"
    MOV DH, 21
    MOV DL, 185
    MOV SI, OFFSET ScoreMsg
    CALL WriteString
    CALL WriteScore

    ; Display "Lives:"
    MOV DH, 21
    MOV DL, 210
    MOV SI, OFFSET LivesMsg
    CALL WriteString
    CALL WriteLives
    RET
DisplayScoreLives ENDP

WriteScore PROC
    MOV AX, [Score]
    CALL WriteNumber
    RET
WriteScore ENDP

WriteLives PROC
    MOV AX, [Lives]
    CALL WriteNumber
    RET
WriteLives ENDP

WriteNumber PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    MOV CX, 10
    XOR DX, DX
    DIV CX
    ADD AX, '0'
    MOV AH, 0Eh
    INT 10h
    MOV AL, DL
    ADD AL, '0'
    MOV AH, 0Eh
    INT 10h
    POP DX
    POP CX
    POP BX
    POP AX
    RET
WriteNumber ENDP

WriteString PROC
    MOV AH, 02h                    
    INT 10h
    MOV AH, 09h                    
    MOV BL, 0Fh                    
    @@Loop:
    LODSB                          
    CMP AL, 0                      
    JZ  @@Done                     
    MOV AH, 0Eh                    
    INT 10h                        
    JMP @@Loop                     
    @@Done:
    RET
WriteString ENDP

CheckShoot PROC
    MOV AH, 01h                    
    INT 16h
    JZ NoShoot
    MOV AH, 00h                    
    INT 16h
    CMP AL, ' '                    
    JNE NoShoot
    CMP [BulletActive], 1
    JE NoShoot
    MOV AX, [gunPosX]             
    ADD AX, gunSize / 2           
    MOV [BulletPosX], AX
    MOV AX, [gunPosY]             
    SUB AX, BulletSize             
    MOV [BulletPosY], AX
    MOV [BulletActive], 1
    CALL PlayShootSound           ; Play shoot sound
NoShoot:
    RET
CheckShoot ENDP

MoveBullet PROC
    CMP [BulletActive], 0
    JE NoBullet
    ; Store previous bullet position
    MOV AX, [BulletPosX]
    MOV [PrevBulletPosX], AX
    MOV AX, [BulletPosY]
    MOV [PrevBulletPosY], AX

    MOV AX, [BulletPosY]
    SUB AX, [BulletSpeed]          
    CMP AX, 0                      
    JLE DeactivateBullet
    MOV [BulletPosY], AX
    JMP NoBullet
DeactivateBullet:
    MOV [BulletActive], 0
NoBullet:
    RET
MoveBullet ENDP

CheckHitDuck PROC
    CMP [BulletActive], 0
    JE NoHit
    MOV AX, [BulletPosX]
    CMP AX, [DuckPosX]
    JB NoHit
    MOV AX, [DuckPosX]
    ADD AX, 3
    CMP [BulletPosX], AX
    JA NoHit
    MOV AX, [BulletPosY]
    CMP AX, [DuckPosY]
    JB NoHit
    MOV AX, [DuckPosY]
    SUB AX, 3
    CMP [BulletPosY], AX
    JA NoHit
    ; Bullet hit the duck
    MOV [BulletActive], 0
    ; Decrement lives
    DEC [Lives]
    CALL DisplayScoreLives
    ; Reset the duck position
    MOV [DuckPosX], 0
    MOV AX, [CurrentRowIndex]
    MOV BX, AX
    SHL BX, 1
    MOV AX, [RowIndices + BX]
    MOV [DuckPosY], AX
    INC [Score] ; Increment score on hit
    CALL DisplayScoreLives
NoHit:
    RET
CheckHitDuck ENDP

DrawBullet PROC
    CMP [BulletActive], 0
    JE NoBulletDraw
    MOV AH, 0Ch
    MOV AL, BlackColor
    MOV CX, [BulletPosX]
    MOV DX, [BulletPosY]
    INT 10h
    ADD CX, 1
    INT 10h
    ADD CX, 1
    INT 10h
    ADD DX, 1
    SUB CX, 2
    INT 10h
    ADD CX, 1
    INT 10h
    ADD CX, 1
    INT 10h
NoBulletDraw:
    RET
DrawBullet ENDP

ClearPreviousBulletPosition PROC
    CMP [BulletActive], 0
    JE NoClear
    CALL ClearBulletPixel
NoClear:
    RET
ClearPreviousBulletPosition ENDP

ClearBulletPixel PROC
    MOV AX, [PrevBulletPosY]      ; Adjust background color based on Y position
    CMP AX, ScreenHeight / 2
    JB ClearBulletSky  
    MOV AL, GreenColor
    JMP DrawClearBulletPixel

ClearBulletSky:
    MOV AL, YellowColor

DrawClearBulletPixel:
    MOV AH, 0Ch
    MOV CX, [PrevBulletPosX]
    MOV DX, [PrevBulletPosY]
    INT 10h
    ADD CX, 1
    INT 10h
    ADD CX, 1
    INT 10h
    ADD DX, 1
    SUB CX, 2
    INT 10h
    ADD CX, 1
    INT 10h
    ADD CX, 1
    INT 10h
    RET
ClearBulletPixel ENDP

Movegun PROC
    MOV AX, [gunPosX]
    ADD AX, [gunSpeed]            
    CMP AX, ScreenWidth            
    JB  NoWrap
    XOR AX, AX                     
    CALL ChangeRow                 
NoWrap:
    MOV [gunPosX], AX
    RET
Movegun ENDP

ChangeRow PROC
    MOV AX, [CurrentRowIndex]
    ADD AX, 1
    CMP AX, NumRows                      
    JB NoReset
    XOR AX, AX                     
NoReset:
    MOV [CurrentRowIndex], AX      
    MOV BX, AX
    SHL BX, 1                      
    MOV AX, [RowIndices + BX]      
    MOV [gunPosY], AX             
    RET
ChangeRow ENDP

Drawgun PROC
    MOV BX, 0                      
DrawgunRow:
    MOV CX, [gunPosX]
    MOV DX, [gunPosY]
    ADD DX, BX                     
    PUSH CX                        
    MOV CX, gunSize               

DrawgunColumn:
    PUSH CX
    MOV CX, [gunPosX]
    ADD CX, gunSize               
    MOV AL, BlackColor             
    CALL PlotPixel                 
    POP CX
    DEC CX
    JNZ DrawgunColumn

    POP CX
    INC BX
    CMP BX, gunSize               
    JL DrawgunRow
    RET
Drawgun ENDP

PlotPixel PROC
    MOV AH, 0Ch                    
    INT 10h                        
    RET
PlotPixel ENDP

Delay PROC
    MOV CX, 0FFFh                  
DelayLoop:
    DEC CX
    JNZ DelayLoop
    RET
Delay ENDP

MoveDuck PROC
    ; Increment the move counter
    INC [DuckMoveCounter]
    CMP [DuckMoveCounter], DuckMoveInterval
    JB NoDuckMove

    ; Reset the move counter using a register
    MOV AX, 0
    MOV [DuckMoveCounter], AX

    ; Store previous position
    MOV AX, [DuckPosX]
    MOV [PrevDuckPosX], AX
    MOV AX, [DuckPosY]
    MOV [PrevDuckPosY], AX

    ; Move the duck right
    MOV AX, [DuckPosX]
    ADD AX, [DuckSpeed]             
    CMP AX, ScreenWidth - 3       
    JGE ResetDuck                 
    MOV [DuckPosX], AX
NoDuckMove:
    RET

ResetDuck:
    XOR AX, AX                    
    MOV [DuckPosX], AX
    CALL ChangeDuckRow
    RET
MoveDuck ENDP

ChangeDuckRow PROC
    MOV AX, [CurrentRowIndex]
    ADD AX, 1
    CMP AX, NumRows                ; Number of rows specified
    JB NoResetDuckRow
    XOR AX, AX                     ; Reset to the first row if out of range
NoResetDuckRow:
    MOV [CurrentRowIndex], AX
    MOV BX, AX
    SHL BX, 1                      ; BX = AX * 2 (size of each word in RowIndices)
    MOV AX, [RowIndices + BX]      ; Get the new row position
    MOV [DuckPosY], AX
    RET
ChangeDuckRow ENDP

DrawDuck PROC
    MOV AH, 0Ch                    
    MOV AL, DuckColor             
    MOV CX, [DuckPosX]             
    MOV DX, [DuckPosY]             
    INT 10h                        
    INC CX                         
    INT 10h                        
    DEC DX                         
    INT 10h                        
    INC CX                         
    INT 10h                        
    INC CX                         
    INT 10h                        
    DEC DX                         
    MOV CX, [DuckPosX]             
    INT 10h                        
    INC CX                         
    INT 10h                        
    INC CX                         
    INT 10h                        
    RET
DrawDuck ENDP

ClearPreviousDuckPosition PROC
    CALL ClearPixel
    RET
ClearPreviousDuckPosition ENDP

ClearPixel PROC
    MOV AX, [PrevDuckPosY]      ; Adjust background color based on Y position
    CMP AX, ScreenHeight / 2
    JB ClearSky
    MOV AL, GreenColor
    JMP DrawClearPixel

ClearSky:
    MOV AL, YellowColor

DrawClearPixel:
    MOV AH, 0Ch
    MOV CX, [PrevDuckPosX]
    MOV DX, [PrevDuckPosY]
    INT 10h
    INC CX
    INT 10h
    DEC DX
    INT 10h
    INC CX
    INT 10h
    INC CX
    INT 10h
    DEC DX
    MOV CX, [PrevDuckPosX]
    INT 10h
    INC CX
    INT 10h
    INC CX
    INT 10h 
    RET
ClearPixel ENDP

UpdateTimeAndScore PROC
    INC [TickCounter]
    INC [ScoreTickCounter]
    MOV AX, TicksThreshold
    CMP [TickCounter], AX
    JB NoTimeUpdate
    ; Reset the tick counter
    XOR AX, AX
    MOV [TickCounter], AX
    ; Decrement lives every 30 seconds
    DEC [Lives]
    CALL DisplayScoreLives
    ; Check if lives have reached 0
    CALL CheckGameOver

NoTimeUpdate:
    MOV AX, ScoreTicksThreshold
    CMP [ScoreTickCounter], AX
    JB NoScoreUpdate
    ; Reset the score tick counter
    XOR AX, AX
    MOV [ScoreTickCounter], AX
    ; Increment score every 2 seconds
    INC [Score]
    CALL DisplayScoreLives

NoScoreUpdate:
    RET
UpdateTimeAndScore ENDP

CheckGameOver PROC
    CMP [Lives], 0
    JG NoGameOver
    ; Display game over message
    MOV DH, 23
    MOV DL, 125
    MOV SI, OFFSET GameOverMsg
    CALL WriteString
    ; Display final score message
    MOV DH, 23
    MOV DL, 180
    MOV SI, OFFSET FinalScoreMsg
    CALL WriteString
    ; Display the final score
    MOV DH, 24
    MOV DL, 126
    CALL WriteScore
    ; Set GameOver flag
    MOV [GameOver], 1
NoGameOver:
    RET
CheckGameOver ENDP

PlayShootSound PROC
    ; Play shoot sound (short beep around 1000 Hz)
    MOV AL, 0B6h
    OUT 43h, AL
    MOV AX, 11931  ; Frequency for the PC speaker (roughly 1000 Hz)
    OUT 42h, AL
    MOV AL, AH
    OUT 42h, AL
    IN AL, 61h
    OR AL, 03h
    OUT 61h, AL
    CALL ShortDelay
    IN AL, 61h
    AND AL, 0FCh
    OUT 61h, AL
    RET
PlayShootSound ENDP

ShortDelay PROC
    MOV CX, 5000  ; Increase the delay for a longer beep
ShortDelayLoop:
    DEC CX
    JNZ ShortDelayLoop
    RET
ShortDelay ENDP
 
 
end
