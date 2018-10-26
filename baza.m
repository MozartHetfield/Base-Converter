function r = baza(sursa,b1,b2)
  if ( b1 > 36 || b1 < 2 || b2 > 36 || b2 < 2 )
    disp("Invalid bases")
    return;
  endif
  disp("The program isn't case sensitive. Write letters without caps.")
  negativ = findstr(sursa, '-');
  lengthnegativ = numel(negativ);
  if ( lengthnegativ ~= 0 )
    disp("It doesn't work for negative numbers.")
    return;
  endif
  if ( b1 == b2 )
    r = sursa;
    return;
  endif
  if ( sursa == '0' )
    r = 0;
    return;
  endif
  length = length(sursa);
  a = findstr(sursa, 'a');
  lengtha = numel(a);
  b = findstr(sursa, 'b');
  lengthb = numel(b);
  c = findstr(sursa, 'c');
  lengthc = numel(c);
  d = findstr(sursa, 'd');
  lengthd = numel(d);
  e = findstr(sursa, 'e');
  lengthe = numel(e);
  f = findstr(sursa, 'f');
  lengthf = numel(f);
  g = findstr(sursa, 'g');
  lengthg = numel(g);
  h = findstr(sursa, 'h');
  lengthh = numel(h);
  i = findstr(sursa, 'i');
  lengthi = numel(i);
  j = findstr(sursa, 'j');
  lengthj = numel(j);
  k = findstr(sursa, 'k');
  lengthk = numel(k);
  l = findstr(sursa, 'l');
  lengthl = numel(l);
  m = findstr(sursa, 'm');
  lengthm = numel(m);
  n = findstr(sursa, 'n');
  lengthn = numel(n);
  o = findstr(sursa, 'o');
  lengtho = numel(o);
  p = findstr(sursa, 'p');
  lengthp = numel(p);
  q = findstr(sursa, 'q');
  lengthq = numel(q);
  r = findstr(sursa, 'r');
  lengthr = numel(r);
  s = findstr(sursa, 's');
  lengths = numel(s);
  t = findstr(sursa, 't');
  lengtht = numel(t);
  u = findstr(sursa, 'u');
  lengthu = numel(u);
  v = findstr(sursa, 'v');
  lengthv = numel(v);
  w = findstr(sursa, 'w');
  lengthw = numel(w);
  x = findstr(sursa, 'x');
  lengthx = numel(x);
  y = findstr(sursa, 'y');
  lengthy = numel(y);
  z = findstr(sursa, 'z');
  lengthz = numel(z);
  nr0 = findstr(sursa, '0');
  lengthnr0 = numel(nr0);
  nr1 = findstr(sursa, '1');
  lengthnr1 = numel(nr1);
  nr2 = findstr(sursa, '2');
  lengthnr2 = numel(nr2);
  nr3 = findstr(sursa, '3');
  lengthnr3 = numel(nr3);
  nr4 = findstr(sursa, '4');
  lengthnr4 = numel(nr4);
  nr5 = findstr(sursa, '5');
  lengthnr5 = numel(nr5);
  nr6 = findstr(sursa, '6');
  lengthnr6 = numel(nr6);
  nr7 = findstr(sursa, '7');
  lengthnr7 = numel(nr7);
  nr8 = findstr(sursa, '8');
  lengthnr8 = numel(nr8);
  nr9 = findstr(sursa, '9');
  lengthnr9 = numel(nr9);
  if ( b1 == 10 )
    numinten = sursa;
    if ( ischar(numinten) == 1 )
      numinten = str2num(numinten);
    endif
  endif
  if ( b1 ~= 10 ) %il face in baza 10 daca nu e deja
    aux = 1; %parcurgere
    numinten = 0; %numarul care va iesi in baza 10 din string
    while ( aux < (lengtha + 1) ) %pentru toate a-urile
     poza = a(aux); %pozitia fiecarui element din vector
     numinten = numinten + 10*b1^(length - poza);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthb + 1) ) %pentru toate b-urile
     pozb = b(aux); %pozitia fiecarui element din vector
     numinten = numinten + 11*b1^(length - pozb);
     aux = aux + 1;  
    endwhile
    aux = 1;
    while ( aux < (lengthc + 1) ) %pentru toate c-urile
     pozc = c(aux); %pozitia fiecarui element din vector
     numinten = numinten + 12*b1^(length - pozc);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthd + 1) ) %pentru toate d-urile
     pozd = d(aux); %pozitia fiecarui element din vector
     numinten = numinten + 13*b1^(length - pozd);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthe + 1) ) %pentru toate e-urile
     poze = e(aux); %pozitia fiecarui element din vector
     numinten = numinten + 14*b1^(length - poze);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthf + 1) ) %pentru toate f-urile
     pozf = f(aux); %pozitia fiecarui element din vector
     numinten = numinten + 15*b1^(length - pozf);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthg + 1) ) %pentru toate g-urile
     pozg = g(aux); %pozitia fiecarui element din vector
     numinten = numinten + 16*b1^(length - pozg);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthh + 1) ) %pentru toate h-urile
     pozh = h(aux); %pozitia fiecarui element din vector
     numinten = numinten + 17*b1^(length - pozh);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthi + 1) ) %pentru toate i-urile
     pozi = i(aux); %pozitia fiecarui element din vector
     numinten = numinten + 18*b1^(length - pozi);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthj + 1) ) %pentru toate j-urile
     pozj = j(aux); %pozitia fiecarui element din vector
     numinten = numinten + 19*b1^(length - pozj);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthk + 1) ) %pentru toate k-urile
     pozk = k(aux); %pozitia fiecarui element din vector
     numinten = numinten + 20*b1^(length - pozk);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthl + 1) ) %pentru toate l-urile
     pozl = l(aux); %pozitia fiecarui element din vector
     numinten = numinten + 21*b1^(length - pozl);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthm + 1) ) %pentru toate m-urile
     pozm = m(aux); %pozitia fiecarui element din vector
     numinten = numinten + 22*b1^(length - pozm);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthn + 1) ) %pentru toate n-urile
     pozn = n(aux); %pozitia fiecarui element din vector
     numinten = numinten + 23*b1^(length - pozn);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengtho + 1) ) %pentru toate o-urile
     pozo = o(aux); %pozitia fiecarui element din vector
     numinten = numinten + 24*b1^(length - pozo);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthp + 1) ) %pentru toate p-urile
     pozp = p(aux); %pozitia fiecarui element din vector
     numinten = numinten + 25*b1^(length - pozp);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthq + 1) ) %pentru toate q-urile
     pozq = q(aux); %pozitia fiecarui element din vector
     numinten = numinten + 26*b1^(length - pozq);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthr + 1) ) %pentru toate r-urile
     pozr = r(aux); %pozitia fiecarui element din vector
     numinten = numinten + 27*b1^(length - pozr);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengths + 1) ) %pentru toate s-urile
     pozs = s(aux); %pozitia fiecarui element din vector
     numinten = numinten + 28*b1^(length - pozs);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengtht + 1) ) %pentru toate t-urile
     pozt = t(aux); %pozitia fiecarui element din vector
     numinten = numinten + 29*b1^(length - pozt);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthu + 1) ) %pentru toate u-urile
     pozu = u(aux); %pozitia fiecarui element din vector
     numinten = numinten + 30*b1^(length - pozu);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthv + 1) ) %pentru toate v-urile
     pozv = v(aux); %pozitia fiecarui element din vector
     numinten = numinten + 31*b1^(length - pozv);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthw + 1) ) %pentru toate w-urile
     pozw = w(aux); %pozitia fiecarui element din vector
     numinten = numinten + 32*b1^(length - pozw);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthx + 1) ) %pentru toate x-urile
     pozx = x(aux); %pozitia fiecarui element din vector
     numinten = numinten + 33*b1^(length - pozx);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthy + 1) ) %pentru toate y-urile
     pozy = y(aux); %pozitia fiecarui element din vector
     numinten = numinten + 34*b1^(length - pozy);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthz + 1) ) %pentru toate z-urile
     pozz = z(aux); %pozitia fiecarui element din vector
     numinten = numinten + 35*b1^(length - pozz);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthnr0 + 1) ) %pentru toate 0-urile
     poz0 = nr0(aux); %pozitia fiecarui element din vector
     numinten = numinten + 0*b1^(length - poz0);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthnr1 + 1) ) %pentru toate 1-urile
     poz1 = nr1(aux); %pozitia fiecarui element din vector
     numinten = numinten + 1*b1^(length - poz1);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthnr2 + 1) ) %pentru toate 2-urile
     poz2 = nr2(aux); %pozitia fiecarui element din vector
     numinten = numinten + 2*b1^(length - poz2);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthnr3 + 1) ) %pentru toate 3-urile
     poz3 = nr3(aux); %pozitia fiecarui element din vector
     numinten = numinten + 3*b1^(length - poz3);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthnr4 + 1) ) %pentru toate 4-urile
     poz4 = nr4(aux); %pozitia fiecarui element din vector
     numinten = numinten + 4*b1^(length - poz4);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthnr5 + 1) ) %pentru toate 5-urile
     poz5 = nr5(aux); %pozitia fiecarui element din vector
     numinten = numinten + 5*b1^(length - poz5);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthnr6 + 1) ) %pentru toate 6-urile
     poz6 = nr6(aux); %pozitia fiecarui element din vector
     numinten = numinten + 6*b1^(length - poz6);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthnr7 + 1) ) %pentru toate 7-urile
     poz7 = nr7(aux); %pozitia fiecarui element din vector
     numinten = numinten + 7*b1^(length - poz7);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthnr8 + 1) ) %pentru toate 8-urile
     poz8 = nr8(aux); %pozitia fiecarui element din vector
     numinten = numinten + 8*b1^(length - poz8);
     aux = aux + 1;
    endwhile
    aux = 1;
    while ( aux < (lengthnr9 + 1) ) %pentru toate 9-urile
     poz9 = nr9(aux); %pozitia fiecarui element din vector
     numinten = numinten + 9*b1^(length - poz9);
     aux = aux + 1;
    endwhile
  endif %aici iese numarul in baza 10
  conditie = 0; %pentru a sti cand devine catul 0
  helper = fix(numinten/b2); %catul impartirii
  r1 = numinten - helper*b2; %se afla primul rest
  if ( r1 == 10 )
    r = 'a';
  endif
  if ( r1 == 11 )
    r = 'b';
  endif
  if ( r1 == 12 )
    r = 'c';
  endif
  if ( r1 == 13 )
    r = 'd';
  endif
  if ( r1 == 14 )
    r = 'e';
  endif
  if ( r1 == 15 )
    r = 'f';
  endif
  if ( r1 == 16 )
    r = 'g';
  endif
  if ( r1 == 17 )
    r = 'h';
  endif
  if ( r1 == 18 )
    r = 'i';
  endif
  if ( r1 == 19 )
    r = 'j';
  endif
  if ( r1 == 20 )
    r = 'k';
  endif
  if ( r1 == 21 )
    r = 'l';
  endif
  if ( r1 == 22 )
    r = 'm';
  endif
  if ( r1 == 23 )
    r = 'n';
  endif
  if ( r1 == 24 )
    r = 'o';
  endif
  if ( r1 == 25 )
    r = 'p';
  endif
  if ( r1 == 26 )
    r = 'q';
  endif
  if ( r1 == 27 )
    r = 'r';
  endif
  if ( r1 == 28 )
    r = 's';
  endif
  if ( r1 == 29 )
    r = 't';
  endif
  if ( r1 == 30 )
    r = 'u';
  endif
  if ( r1 == 31 )
    r = 'v';
  endif
  if ( r1 == 32 )
    r = 'w';
  endif
  if ( r1 == 33 )
    r = 'x';
  endif
  if ( r1 == 34 )
    r = 'y';
  endif
  if ( r1 == 35 )
    r = 'z';
  endif
  if ( r1 == 0 )
    r = '0';
  endif
  if ( r1 == 1 )
    r = '1';
  endif
  if ( r1 == 2 )
    r = '2';
  endif
  if ( r1 == 3 )
    r = '3';
  endif
  if ( r1 == 4 )
    r = '4';
  endif
  if ( r1 == 5 )
    r = '5';
  endif
  if ( r1 == 6 )
    r = '6';
  endif
  if ( r1 == 7 )
    r = '7';
  endif
  if ( r1 == 8 )
    r = '8';
  endif
  if ( r1 == 9 )
    r = '9';
  endif
  numinten = helper; %pentru continuitate, catul va fi impartit
  if ( helper == 0 )
   conditie = 1;
  endif
  while ( conditie ~= 1 )
    helper = fix(numinten/b2);
    if ( helper == 0 )
      conditie = 1;
    endif
    rk = numinten - helper*b2;
    if ( rk == 10 )
      rk = 'a';
    endif
    if ( rk == 11 )
      rk = 'b';
    endif
    if ( rk == 12 )
      rk = 'c';
    endif
    if ( rk == 13 )
      rk = 'd';
    endif
    if ( rk == 14 )
      rk = 'e';
    endif
    if ( rk == 15 )
      rk = 'f';
    endif
    if ( rk == 16 )
      rk = 'g';
    endif
    if ( rk == 17 )
      rk = 'h';
    endif
    if ( rk == 18 )
      rk = 'i';
    endif
    if ( rk == 19 )
      rk = 'j';
    endif
    if ( rk == 20 )
      rk = 'k';
    endif
    if ( rk == 21 )
      rk = 'l';
    endif
    if ( rk == 22 )
      rk = 'm';
    endif
    if ( rk == 23 )
      rk = 'n';
    endif
    if ( rk == 24 )
      rk = 'o';
    endif
    if ( rk == 25 )
      rk = 'p';
    endif
    if ( rk == 26 )
      rk = 'q';
    endif
    if ( rk == 27 )
      rk = 'r';
    endif
    if ( rk == 28 )
      rk = 's';
    endif
    if ( rk == 29 )
      rk = 't';
    endif
    if ( rk == 30 )
      rk = 'u';
    endif
    if ( rk == 31 )
      rk = 'v';
    endif
    if ( rk == 32 )
      rk = 'w';
    endif
    if ( rk == 33 )
      rk = 'x';
    endif
    if ( rk == 34 )
      rk = 'y';
    endif
    if ( rk == 35 )
      rk = 'z';
    endif
    if ( rk == 0 )
      rk = '0';
    endif
    if ( rk == 1 )
      rk = '1';
    endif
    if ( rk == 2 )
      rk = '2';
    endif
    if ( rk == 3 )
      rk = '3';
    endif
    if ( rk == 4 )
      rk = '4';
    endif
    if ( rk == 5 )
      rk = '5';
    endif
    if ( rk == 6 )
      rk = '6';
    endif
    if ( rk == 7 )
      rk = '7';
    endif
    if ( rk == 8 )
      rk = '8';
    endif
    if ( rk == 9 )
      rk = '9';
    endif
    numinten = helper;
    r = strcat(r,rk);
  endwhile
  r = flip(r); %string-ul trebuie intors acum
endfunction