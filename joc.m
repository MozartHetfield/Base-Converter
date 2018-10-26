function [] = joc()
  disp("")
  disp("Welcome to Octave's TicTacToe game!")
  disp("X always has the first move")
  disp("The symbol is placed by writting the line and the column of the wanted place")
  disp("If you want to leave the game, press 'q' at the beginning")
  disp("Good luck!")
  disp("")
  scorEU = 0;
  scorPC = 0;
  choice = 0; % X sau 0 sau q
  i = 0; %line
  j = 0; %column
  while (1)
   Board = [ '-' '-' '-' ; '-' '-' '-' ; '-' '-' '-' ];
   choice = input("Select X or 0: ", "strings")
   if ( choice ~= 'X' && choice ~= 'x' && choice ~= '0' && choice ~= 'q' && choice ~= 'Q' )
    disp("Invalid choice")
    continue;
   endif
   if ( choice == 'q' || choice == 'Q' )
    disp("")
    disp("Your final score is:")
    printf("Wins: ") %printf pentru strings fara newline
    disp(scorEU)
    printf("Loses: ")
    disp(scorPC)
    disp("Have a nice day!")
    disp("")
    break;
   endif
   count = 1;
   if ( choice == '0' ) %va incepe calculatorul, pentru ca am ales 0
    moveturn = 1; %pentru alternanta miscarilor, 1 => randul pc-ului
    count = 1;
    %Board nu trebuie sa apara si aici, pentru ca incepe pc-ul si apare deja o data
    while ( count < 10 ) %maximul de miscari
      if ( moveturn == 1 ) %randul calculatorului
       i = randi([1,3]); %numere random ca sa ramana imprevizibil constant
       j = randi([1,3]); %O(N) e mai mare decat de obicei, dar lucram cu nr mici
       if ( Board(i,j) == 'X' || Board(i,j) == '0' ) %element ocupat
        continue;
       endif
       if ( Board(i,j) == '-' ) %element liber
        Board(i,j) = 'X';
        count = count + 1;
        moveturn = 0;
        Board
        %verificare de castig de aici
        if ( Board(1,1) == Board(2,1) && Board(2,1) == Board(3,1) && Board(2,1) == 'X' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        if ( Board(1,2) == Board(2,2) && Board(2,2) == Board(3,2) && Board(3,2) == 'X' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        if ( Board(1,3) == Board(2,3) && Board(2,3) == Board(3,3) && Board(3,3) == 'X' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        if ( Board(1,1) == Board(1,2) && Board(1,2) == Board(1,3) && Board(1,2) == 'X' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        if ( Board(2,1) == Board(2,2) && Board(2,2) == Board(2,3) && Board(2,3) == 'X' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        if ( Board(3,1) == Board(3,2) && Board(3,2) == Board(3,3) && Board(3,3) == 'X' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endifif ( Board(1,1) == Board(2,2) && Board(2,2) == Board(3,3) && Board(3,3) == 'X' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        if ( Board(1,3) == Board(2,2) && Board(2,2) == Board(3,1) && Board(3,1) == 'X' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        %verificare de castig pana aici
       endif
       if ( count == 10 )
        disp("Remiza")
        disp("")
        break;
       endif
      endif
      if ( moveturn == 0 ) %randul meu
        i = input("Enter line: ")
        j = input("Enter column: ")
        if ( i < 1 || i > 3 || j < 1 || j > 3 )
          disp("")
          disp("Invalid place")
          Board
          continue;
        endif
        if ( Board(i,j) == 'X' || Board(i,j) == '0' )
          disp("")
          disp("Invalid move")
          Board
          continue;
        endif
        if ( Board(i,j) == '-' )
          Board(i,j) = '0';
          moveturn = 1;
          count = count + 1;
          Board
          %verificare de castig de aici
          if ( Board(1,1) == Board(2,1) && Board(2,1) == Board(3,1) && Board(2,1) == '0' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(1,2) == Board(2,2) && Board(2,2) == Board(3,2) && Board(3,2) == '0' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(1,3) == Board(2,3) && Board(2,3) == Board(3,3) && Board(3,3) == '0' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(1,1) == Board(1,2) && Board(1,2) == Board(1,3) && Board(1,2) == '0' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(2,1) == Board(2,2) && Board(2,2) == Board(2,3) && Board(2,3) == '0' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(3,1) == Board(3,2) && Board(3,2) == Board(3,3) && Board(3,3) == '0' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(1,1) == Board(2,2) && Board(2,2) == Board(3,3) && Board(3,3) == '0' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(1,3) == Board(2,2) && Board(2,2) == Board(3,1) && Board(3,1) == '0' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          %verificare de castig pana aici
        endif
       if ( count == 10 )
        disp("Remiza")
        disp("")
        break;
       endif
      endif
    endwhile
   endif
   
   if ( count == 10 ) %pentru cand ar iesi din prima conditie
    continue;
   endif
    
   
   if ( choice == 'x' || choice == 'X' )
    moveturn = 0; %pentru alternanta miscarilor, 0 => randul meu
    count = 1;
    Board
    while ( count < 10 ) %maximul de miscari posibile
      if ( moveturn == 0 ) %e randul meu
        i = input("Enter line: ")
        j = input("Enter column: ")
        if ( i > 3 || i < 1 || j > 3 || j < 1 )
          disp("")
          disp("Invalid place")
          Board
          continue;
        endif
        if ( Board(i,j) == 'X' || Board(i,j) == '0' ) %element ocupat
          disp("")
          disp("Invalid move")
          Board
          continue;
        endif
        if ( Board(i,j) == '-' ) %elementul e liber
          Board(i,j) = 'X';
          moveturn = 1; %e randul calculatorului dupa
          count = count + 1; %se ocupa o pozitie
          Board
          %verificare de castig de aici
          if ( Board(1,1) == Board(2,1) && Board(2,1) == Board(3,1) && Board(2,1) == 'X' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(1,2) == Board(2,2) && Board(2,2) == Board(3,2) && Board(3,2) == 'X' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(1,3) == Board(2,3) && Board(2,3) == Board(3,3) && Board(3,3) == 'X' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(1,1) == Board(1,2) && Board(1,2) == Board(1,3) && Board(1,2) == 'X' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(2,1) == Board(2,2) && Board(2,2) == Board(2,3) && Board(2,3) == 'X' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(3,1) == Board(3,2) && Board(3,2) == Board(3,3) && Board(3,3) == 'X' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(1,1) == Board(2,2) && Board(2,2) == Board(3,3) && Board(3,3) == 'X' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
          if ( Board(1,3) == Board(2,2) && Board(2,2) == Board(3,1) && Board(3,1) == 'X' )
            disp("")
            disp("Victory for you")
            scorEU = scorEU + 1;
            printf("Wins: ")
            disp(scorEU)
            printf("Loses: ")
            disp(scorPC)
            disp("")
            count = 10; %ca sa intre in if-ul de dupa
            break;
          endif
        %verificare de castig pana aici
        endif
        if ( count == 10 )
          disp("Remiza")
          disp("")
          break;
        endif
      endif 
     if ( moveturn == 1 ) %e randul pc-ului
      i = randi([1,3]); %numere random ca sa ramana imprevizibil constant
      j = randi([1,3]); %O(N) e mai mare decat de obicei, dar lucram cu nr mici
      if ( Board(i,j) == 'X' || Board(i,j) == 0 ) %element ocupat
        continue;
      endif
      if ( Board(i,j) == '-' ) %element liber
        Board(i,j) = '0';
        moveturn = 0; %e randul meu dupa
        count = count + 1; %se ocupa o pozitie
        Board
        %verificare de castig de aici
        if ( Board(1,1) == Board(2,1) && Board(2,1) == Board(3,1) && Board(2,1) == '0' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        if ( Board(1,2) == Board(2,2) && Board(2,2) == Board(3,2) && Board(3,2) == '0' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        if ( Board(1,3) == Board(2,3) && Board(2,3) == Board(3,3) && Board(3,3) == '0' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        if ( Board(1,1) == Board(1,2) && Board(1,2) == Board(1,3) && Board(1,2) == '0' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        if ( Board(2,1) == Board(2,2) && Board(2,2) == Board(2,3) && Board(2,3) == '0' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        if ( Board(3,1) == Board(3,2) && Board(3,2) == Board(3,3) && Board(3,3) == '0' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        if ( Board(1,1) == Board(2,2) && Board(2,2) == Board(3,3) && Board(3,3) == '0' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        if ( Board(1,3) == Board(2,2) && Board(2,2) == Board(3,1) && Board(3,1) == '0' )
          disp("")
          disp("Victory for the computer")
          scorPC = scorPC + 1;
          printf("Wins: ")
          disp(scorEU)
          printf("Loses: ")
          disp(scorPC)
          disp("")
          count = 10; %ca sa intre in if-ul de dupa
          break;
        endif
        %verificare de castig pana aici
      endif
      if ( count == 10 )
        disp("Remiza")
        disp("")
        break;
      endif
     endif  
    endwhile   
   endif
  endwhile
endfunction