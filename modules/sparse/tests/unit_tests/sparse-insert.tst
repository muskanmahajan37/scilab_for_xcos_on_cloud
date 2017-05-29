// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - S/E - Antoine Elias
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

a=sparse([1 6;1 5;1 3;2 4;2 1;4 4;4 3;5 1;6 6],1:9,[6 6]);
vt=sparse([1 2;1 3;1 4;1 6],[10;11;12;13],[1,6]);
a1=a;
a1(1,:)=vt;
assert_checkequal(vt, a1(1,:));


a=sparse([1 6;1 5;1 3;2 4;2 1;4 4;4 3;5 1;6 6],1:9,[6 6]);
a1=a;
b=-[1 2 3;4 5 6;7 8 9];
a1(1:3,1:3)=b;
assert_checkequal(a1(1:3,1:3), sparse(b));

a = sparse([1 6;1 5;1 3;2 4;2 1;4 4;4 3;5 1;6 6],[%t,%t,%t,%t,%t,%t,%t,%t,%t],[6 6]);
vt = sparse([1 2;1 3;1 4;1 6],[%f,%f;%f,%f],[1,6]);
a1=a;
a1(1,:)=vt;
assert_checkequal(a1(1,:), vt);
