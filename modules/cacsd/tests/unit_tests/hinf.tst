// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - SE - Sylvestre Ledru
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================


A=[-1  0  4  5 -3 -2
   -2  4 -7 -2  0  3
   -6  9 -5  0  2 -1
   -8  4  7 -1 -3  0
    2  5  8 -9  1 -4
    3 -5  8  0  2 -6];

B=[-3 -4 -2  1  0
    2  0  1 -5  2
   -5 -7  0  7 -2
    4 -6  1  1 -2
   -3  9 -8  0  5
    1 -2  3 -6 -2];

C=[ 1 -1  2 -4  0 -3
   -3  0  5 -1  1  1
   -7  5  0 -8  2 -2
    9 -3  4  0  3  7
    0  1 -2  1 -6 -2];

D=[ 1 -2 -3  0  0
    0  4  0  1  0
    5 -3 -4  0  1
    0  1  0  1 -3
    0  0  1  7  1];
Gamma=10.18425636157899;
[AK,BK,CK,DK] = hinf(A,B,C,D,2,2,Gamma);

assert_checkalmostequal(DK,[0.0551858,0.1333855; -0.3195369,0.0333464], 1.e-6 );

CK_Ref = [-1694955,9282226.3,7644816,3695418.1,4551537.9,3956434.1;-35560237,1.947D+08,1.604D+08,77530062,95491495,83006200];
assert_checkalmostequal(CK,CK_Ref, 1.e-3 );

AK_Ref = [-6.112D+08,3.347D+09,2.757D+09,1.333D+09,1.641D+09,1.427D+09;
-2.162D+08,1.184D+09,9.749D+08,4.713D+08,5.805D+08,5.046D+08;
-6.636D+08,3.634D+09,2.993D+09,1.447D+09,1.782D+09,1.549D+09;
-2.619D+08,1.434D+09,1.181D+09,5.711D+08,7.034D+08,6.114D+08;
-9.297D+08,5.092D+09,4.193D+09,2.027D+09,2.497D+09,2.170D+09;
2.313D+08,-1.267D+09,-1.043D+09,-5.043D+08,-6.211D+08,-5.399D+08];
assert_checkalmostequal(AK,AK_Ref, 1.e-3 );

BK_Ref=[-0.2224538,-0.1084738;
-0.8518108,-0.6521262;
0.8172727,0.5793501;
0.0843421,0.0100477;
-0.5631929,-0.2478528;
0.0067885,-0.7619229];
assert_checkalmostequal(BK,BK_Ref, 1.e-5 );
