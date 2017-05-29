// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009-2010 - DIGITEO 
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->
ilib_verbose(0);
mkdir(pathconvert(TMPDIR+"/booleanExample"));
cd(pathconvert(TMPDIR+"/booleanExample"));
copyfile(SCI+"/modules/api_scilab/tests/unit_tests/booleanExample.c",pathconvert(TMPDIR+"/booleanExample/booleanExample.c",%F));
cflags = "-I"+SCI+"/modules/localization/includes";
ilib_build("gw_booleanExample", ["booleanExample", "booleanExample"], "booleanExample.c", [], "", "", cflags);
exec("loader.sce");

a = %t;
b = %f;
c = [a,b;b,a;a,b;b,a];
d = c';
assert_checkequal(booleanExample(a), a);
assert_checkequal(booleanExample(b), b);
assert_checkequal(booleanExample(c), c);
assert_checkequal(booleanExample(d), d);
