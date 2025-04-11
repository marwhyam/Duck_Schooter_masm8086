.model small
.stack 0100h
.data

firstd db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,00,11,11,11,11,11
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,00,11,11,11,11,11
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,00,11,11,11,11,11
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,00,11,11,11,11,11
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00,00

firstu db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,00,00,00,00,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00
      db 00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00
      db 00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00
      db 00,00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00
      db 00,00,00,00,00,11,11,11,11,11,11,11,11,11,11,00,00,00,00,00

firstc db 00,00,00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00
      db 00,00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00
      db 00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 00,11,11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,00,00,11,11,11,11
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,00,00,00,00
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,00,00,00,00
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,00,00,00,00
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,00,00,00,00
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,00,00,00,00
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,00,00,00,00
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,00,11,11,11,11,11
      db 00,11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11
      db 00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 00,00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00
      db 00,00,00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00

firstk db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,11,11,11,11,11,11,11,00
      db 11,11,11,11,11,11,11,00,00,00,00,11,11,11,11,11,11,11,00,00
      db 11,11,11,11,11,11,11,00,00,00,11,11,11,11,11,11,11,00,00,00
      db 11,11,11,11,11,11,11,00,00,11,11,11,11,11,11,11,00,00,00,00
      db 11,11,11,11,11,11,11,00,11,11,11,11,11,11,11,00,00,00,00,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00,00,00,00,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,00,00,00,00,00,00,00,00
      db 11,11,11,11,11,11,11,11,11,11,11,00,00,00,00,00,00,00,00,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,00,00,00,00,00,00,00,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00,00,00,00,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 11,11,11,11,11,11,11,00,11,11,11,11,11,11,11,00,00,00,00,00
      db 11,11,11,11,11,11,11,00,00,11,11,11,11,11,11,11,00,00,00,00
      db 11,11,11,11,11,11,11,00,00,00,11,11,11,11,11,11,11,00,00,00
      db 11,11,11,11,11,11,11,00,00,00,00,11,11,11,11,11,11,11,00,00
      db 11,11,11,11,11,11,11,00,00,00,00,00,11,11,11,11,11,11,11,00
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11

scnds db 00,00,00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00
      db 00,00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 00,11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,00
      db 00,11,11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,00,00,00
      db 00,11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,00,00,00,00
      db 00,11,11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,00,00,00
      db 00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00,00
      db 00,00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00
      db 00,00,00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00
      db 00,00,00,00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00
      db 00,00,00,00,00,00,00,00,00,00,00,00,00,11,11,11,11,11,11,00
      db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,11,11,11,11,11,00
      db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,11,11,11,11,11,00
      db 00,11,11,11,11,11,00,00,00,00,00,00,00,11,11,11,11,11,11,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00
      db 00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00,00

scndh db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11

scndo db 00,00,00,00,00,11,11,11,11,11,11,11,11,11,11,00,00,00,00,00
      db 00,00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00
      db 00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00
      db 00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,11,11,11,11,11
      db 11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,11,11,11,11,11
      db 11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,11,11,11,11,11
      db 11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,11,11,11,11,11
      db 11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,11,11,11,11,11
      db 11,11,11,11,11,00,00,00,00,00,00,00,00,00,00,11,11,11,11,11
      db 11,11,11,11,11,11,00,00,00,00,00,00,00,00,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,00,00,00,00,00,00,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,00,00,00,00,11,11,11,11,11,11,11,11
      db 00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00
      db 00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00
      db 00,00,00,11,11,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00
      db 00,00,00,00,11,11,11,11,11,11,11,11,11,11,11,11,00,00,00,00
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00

scndt db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00
      db 00,00,00,00,00,00,11,11,11,11,11,11,11,11,00,00,00,00,00,00

duck  db 00,00,00,00,00,14,14,14,14,14,14,14,14,14,14,00,00,00,00,00
      db 00,00,00,14,14,14,14,14,14,14,14,14,14,14,14,14,14,00,00,00
      db 00,00,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,00,00
      db 00,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,00
      db 14,14,14,14,00,00,00,14,14,14,14,14,14,00,00,00,14,14,14,14
      db 14,14,14,00,00,00,00,00,14,14,14,14,00,00,00,00,00,14,14,14
      db 14,14,14,00,00,00,00,00,14,14,14,14,00,00,00,00,00,14,14,14
      db 14,14,14,14,00,00,00,14,14,14,14,14,14,00,00,00,14,14,14,14
      db 14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14
      db 14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14
      db 14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14
      db 14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14
      db 14,14,14,14,14,14,14,14,12,12,14,14,14,14,14,14,14,14,14,14
      db 14,14,14,14,14,14,14,14,12,12,12,12,14,14,14,14,14,14,14,14
      db 14,14,14,14,14,14,14,14,12,12,12,12,12,12,14,14,14,14,14,14
      db 14,14,14,14,14,14,14,14,12,12,12,12,12,12,12,14,14,14,14,14
      db 00,14,14,14,14,14,14,14,12,12,12,12,12,12,14,14,14,14,14,00
      db 00,00,14,14,14,14,14,14,12,12,12,12,14,14,14,14,14,14,00,00
      db 00,00,00,14,14,14,14,14,12,12,14,14,14,14,14,14,14,00,00,00
      db 00,00,00,00,14,14,14,14,14,14,14,14,14,14,14,14,00,00,00,00
      db 00,00,00,00,00,00,14,14,14,14,14,14,14,14,00,00,00,00,00,00


xi dw 0
xf dw 0
yi dw 0
yf dw 0
line db 150 dup (6)
line_size dw 150
x_line dw ?
y_line dw ?
temp dw ?
color db 12 ; default to orange
input_buffer DB 20 DUP(0)
file_name db 'C:\masm615\BIN\zfile.txt', 0
file_handle dw ?
buffer db 128 dup(0)
buffer_size dw 128
username_msg db 'Enter your name:', 0
username_buffer db 50 dup('$')
hello db '          Hello,', 0
welcome_msg db '       Welcome to Duckshoot Game!', 0
option1 db '        1. Start the adventure Level 1', 0
option2 db '        2. Start the adventure Level 2', 0
option3 db '        3. Start the adventure Level 3', 0
option4 db '        4. View the leaderboard', 0
option5 db '        5. View instructions', 0
option6 db '        6. Exit the game', 0
menu db '      Please choose an option (1-6): ', 0
invalid_choice db 'Invalid choice.', 0
leaderboard_title db '             Leaderboard', 0
instruction_title db '             Instructions', 0
instructions db '       Press space bar to shoot.Level 1 is in the morning so duck is slow (like we are in 8am classes).Level 2 duck is more energetic.Level 3 duck is lethal so beware!The time constraint for lives also gets smaller.', 0
                                                                                                                                                                                                                                                     instructionstwo db '             amina 12', 13, 10, '             maryam 7', 13, 10, '             ayesha 5',0 ;13, 10, '             sara 6',0 

user_choice db 0
; Define the debug messages
debug_open_success db 'File opened successfully', 0
debug_read_success db 'File read successfully', 0
debug_display_done db 'File display done', 0

ScreenWidth   EQU 320    ; Screen width in pixels
ScreenHeight  EQU 200    ; Screen height in pixels
GameOver db 0 ; Add this line to define GameOver


.code
EXTERN start_level1:PROC
EXTERN start_level2:PROC
EXTERN start_level3:PROC


main:
    mov ax, @data
    mov ds, ax

    ; setting video mode
    mov al, 13h            
    mov ah, 00h
    int 10h
; Draw "DUCK"
    mov si, offset firstd
    mov yi, 30
    mov yf, 50
    mov xi, 30
    mov xf, 50
    call drawpixel

    mov si, offset firstu
    mov yi, 30
    mov yf, 50
    mov xi, 60
    mov xf, 80
    call drawpixel

    mov si, offset firstc
    mov yi, 30
    mov yf, 50
    mov xi, 90
    mov xf, 110
    call drawpixel

    mov si, offset firstk
    mov yi, 30
    mov yf, 50
    mov xi, 120
    mov xf, 140
    call drawpixel

    ; Draw "SHOOT"
    mov si, offset scnds
    mov yi, 30
    mov yf, 50
    mov xi, 150
    mov xf, 170
    call drawpixel

    mov si, offset scndh
    mov yi, 30
    mov yf, 50
    mov xi, 180
    mov xf, 200
    call drawpixel

    mov si, offset scndo
    mov yi, 30
    mov yf, 50
    mov xi, 210
    mov xf, 230
    call drawpixel

    mov si, offset scndo
    mov yi, 30
    mov yf, 50
    mov xi, 240
    mov xf, 260
    call drawpixel

    mov si, offset scndt
    mov yi, 30
    mov yf, 50
    mov xi, 270
    mov xf, 290
    call drawpixel

    ; Draw "DUCK" on next line and centered
    mov si, offset duck
    mov yi, 60
    mov yf, 80
    mov xi, 150
    mov xf, 170
    call drawpixel

    ; Draw a centered horizontal line
    mov xi, 60
    mov xf, 260
    mov yi, 90
    mov color, 12
    call draw_horizontal_line

    ; Wait for any key press
    mov ah, 0
    int 16h

    ; Jump to page 2
    call page_2
    jmp end_program


page_2 proc
    ; Clear the screen
    call clear_screen_vga

    ; Display "Enter your name" message
    mov dx, offset username_msg
    call print_enter_name

    ; Read the user's name
    mov dx, offset username_buffer
    mov ah, 0Ah
    int 21h

    ; Concatenate the hello with the username
    mov si, offset hello
    mov di, offset hello + 6
    mov cx, 50 ; Maximum length of username_buffer
    rep movsb ; Copy the username to the end of the hello message

    ; Display the personalized welcome message
    call print_hello_welcome
    call display_menu

    ; Get user choice
    call get_choice

    ; Process user choice
    cmp al, '1'
    je open_level1
    cmp al, '2'
    je open_level2
    cmp al, '3'
    je open_level3
    cmp al, '4'
    je view_leaderboard
    cmp al, '5'
    je view_instructions
    cmp al, '6'
    je quit_game
    ; If invalid choice, handle error
    jmp handle_error

    ret
page_2 endp
open_level1 PROC
    ; Call the level 1 procedure
    call start_level1
    ; Return to the menu after level 1 is done
    call reset_game_state
    call page_2
    ret
open_level1 ENDP
open_level2 PROC
    ; Call the level 2 procedure
    call start_level2
    ; Return to the menu after level 1 is done
    call reset_game_state
    call page_2
    ret
open_level2 ENDP
open_level3 PROC
    ; Call the level 3 procedure
    call start_level3
    ; Return to the menu after level 1 is done
    call reset_game_state
    call page_2
    ret
open_level3 ENDP
view_leaderboard:
    ; Clear the screen
    call clear_screen_vga
    ; Display the title "Leaderboard"
    mov si, offset leaderboard_title
    call print_centered_with_color
    call print_newline
    ; Open the file
    mov ah, 3Dh
    mov al, 0       ; Open file for reading
    lea dx, file_name
    int 21h
    jc file_error
    mov [file_handle], ax
    ; Read the file content
    mov bx, [file_handle]
    mov ah, 3Fh
    lea dx, buffer
    mov cx, 128      ; Size of the buffer
    int 21h
    jc file_error
    ; Display the file content
    lea si, buffer
display_loop:
    lodsb
    or al, al
    jz done_displaying
    call print_character
    jmp display_loop
done_displaying:
    ; Close the file
    mov ah, 3Eh
    mov bx, [file_handle]
    int 21h
    ; Wait for user input before returning to the main menu
    call wait_for_key_press
    ; Return to main menu
    call page_2
    ret
file_error:
    ; Display hardcoded leaderboard content
    mov si, offset instructionstwo
display_hardcoded:
    lodsb
    or al, al
    jz done_hardcoded
    call print_character
    jmp display_hardcoded
done_hardcoded:
    ; Wait for user input before returning to the main menu
    call wait_for_key_press
    call page_2
    ret
view_instructions:
    ; Clear the screen
    call clear_screen_vga
    mov si, offset instruction_title
    call print_centered_with_color
    call print_newline
    ; Display instructions in cyan
    mov si, offset instructions
    call print_centered_with_color
    call print_newline
    ; Wait for user input before returning to the main menu
    call wait_for_key_press
    ; Return to main menu
    call page_2
    ret
wait_for_key_press:
    mov ah, 00h
    int 16h
    ret
quit_game:
    ; Exit the program and return to text mode
    mov ax, 03h
    int 10h
    mov ax, 4C00h
    int 21h
reset_game_state PROC
    ; Clear the game over flag and reset any other necessary states
    mov byte ptr [GameOver], 0
    ; You can add more resets here if needed
    ret
reset_game_state ENDP
handle_error:
    mov cx, 0
    mov dx, 22
    mov si, offset invalid_choice
    call print_centered_with_color
    call print_newline
    call wait_for_key_press
    call page_2
    ret

clear_screen_vga:
    mov ax, 0A000h       ; Set ES to point to VGA video memory
    mov es, ax
    xor di, di           ; Start from the beginning of video memory
    mov cx, 320 * 200    ; Clear 320x200 pixels (VGA resolution)
    mov al, 0            ; Clear with color index 0 (black)
    rep stosb
    ret

get_choice:
    mov ah, 00h
    int 16h
    mov [user_choice], al
    ret

display_menu:
    mov dx, 14 ; Y position for first option
    mov si, offset option1
    call print_centered_with_color
    call print_newline

    mov dx, 16 ; Y position for second option
    mov si, offset option2
    call print_centered_with_color
    call print_newline

    mov dx, 18 ; Y position for third option
    mov si, offset option3
    call print_centered_with_color
    call print_newline

    mov dx, 20 ; Y position for fourth option
    mov si, offset option4
    call print_centered_with_color
    call print_newline

    mov dx, 22 ; Y position for fifth option
    mov si, offset option5
    call print_centered_with_color
    call print_newline

    mov dx, 24 ; Y position for sixth option
    mov si, offset option6
    call print_centered_with_color
    call print_newline

    mov dx, 26 ; Y position for the prompt
    mov si, offset menu
    call print_centered_with_color
    call print_newline
    ret
drawpixel proc
    mov ah, 0ch
    mov dx, yi        ; y coordinate initial (up down)
y:
    mov cx, xi        ; x coordinate initial (left right)
x:
    mov al, [si]    ; start array
    int 10h
    inc si            ; increment full row (x axis)
    inc cx
    cmp cx, xf        ; x coordinate final (left right)
    jb x
    inc dx            ; jump to next row
    cmp dx, yf        ; y coordinate final (up down)
    jb y
    ret
drawpixel endp
draw_horizontal_line proc
    mov dx, yi           ; y coordinate for the horizontal line
    mov cx, xi           ; starting x coordinate
    mov bx, xf           ; ending x coordinate

draw_loop:
    mov al, color        ; the color of the line
    mov ah, 0Ch          ; function to put pixel
    int 10h
    inc cx
    cmp cx, bx
    jbe draw_loop

    ret
draw_horizontal_line endp
print_enter_name:
    mov si, offset username_msg   ; Load the message string address
    mov ah, 0Eh                   ; Function to print character
    mov bh, 00h                   ; Page number
    mov bl, 03h                   ; Attribute (cyan on black)
print_loop1:
    lodsb                         ; Load next byte from string
    or al, al                     ; Check for null terminator
    jz done_print1                 ; If null, we're done
    int 10h                       ; Print character with specified attribute
    jmp print_loop1
done_print1:
    ret

print_hello_welcome:
    mov dx, 12 ; Y position
    mov si, offset hello
    call print_centered_with_color
    call print_newline
    mov dx, 13 ; Y position
    mov si, offset welcome_msg
    call print_centered_with_color
    call print_newline
    ret
 print_character:
    mov ah, 0Eh
    mov bh, 00h   ; Page number
    mov bl, 03h   ; Attribute (cyan on black)
    int 10h
    ret


print_centered_with_color:
    mov ah, 0Eh
    mov bh, 00h   ; Page number
    mov bl, 03h   ; Attribute (light red on black)

print_loop:
    lodsb         ; Load next byte from string
    or al, al     ; Check for null terminator
    jz done_print ; If null, we're done
    int 10h       ; Print character with specified attribute
    jmp print_loop

done_print:
    ret

print_newline:
    mov al, 13   ; Carriage Return
    mov ah, 0Eh
    int 10h

    mov al, 10   ; Line Feed
    mov ah, 0Eh
    int 10h
    ret

end_program:
    mov ax, 4C00h
    int 21h

end main

