
%%% 1a

% solving for D1 = y/x given G = b/a and target f1:

[x y] = RR_Diophantine([1 0 -35 0 259 0 -255],[1 0 -20 0 64],[1 18 127 444 799 690 225])

% zeros at:

roots(y)

% poles at: 

roots(x)

% D1 is improper since the order of y is larger

%%% 1b

% solving for D2 = y/x given G = b/a and target f2:

syms s

p = 5

f2p = (s^7+68*s^6+1027*s^5+6794*s^4+22999*s^3+40640*s^2+34725*s+11250)*(s+50)^p

f2 = coeffs(f2p)

[x y] = RR_Diophantine([1 0 -35 0 259 0 -255],[1 0 -20 0 64],f2)

% p = 5 gives strictly proper function

% zeros at:

roots(y)

% poles at: 

roots(x)
