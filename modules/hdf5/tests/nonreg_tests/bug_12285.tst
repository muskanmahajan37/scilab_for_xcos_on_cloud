// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Antoine ELIAS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- Non-regression test for bug 12285 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=12285
//
// <-- Short Description -->
// 
// export_to_hdf5 function could not handle any matrix in append mode.

savefile = TMPDIR + "bug_12285.sod";
a_list = list(1,2,3);
a_list_ref = a_list;

a_string = "a string";
a_string_ref = a_string;

an_integer = 546;
an_integer_ref = an_integer;

a_complex_num = 1 + %i;
a_complex_num_ref = a_complex_num;

an_array_multidim  = [1 2 3 4; 5 6 7 8; 9 10 11 12];
an_array_multidim_ref = an_array_multidim;

//save all variables in the same file
assert_checktrue(export_to_hdf5(savefile, 'a_list', '-append'));
assert_checktrue(export_to_hdf5(savefile, 'a_string', '-append'));
assert_checktrue(export_to_hdf5(savefile, 'an_integer', '-append'));
assert_checktrue(export_to_hdf5(savefile, 'a_complex_num', '-append'));
assert_checktrue(export_to_hdf5(savefile, 'an_array_multidim', '-append'));

//clear variables
clear a_list a_string an_integer an_array_multidim

//load variables
assert_checktrue(import_from_hdf5(savefile, 'a_list'));
assert_checktrue(import_from_hdf5(savefile, 'a_string'));
assert_checktrue(import_from_hdf5(savefile, 'an_integer'));
assert_checktrue(import_from_hdf5(savefile, 'a_complex_num'));
assert_checktrue(import_from_hdf5(savefile, 'an_array_multidim'));

//check variables values
assert_checkequal(a_list, a_list_ref);
assert_checkequal(a_string, a_string_ref);
assert_checkequal(an_integer, an_integer_ref);
assert_checkequal(a_complex_num, a_complex_num_ref);
assert_checkequal(an_array_multidim, an_array_multidim_ref);

//append file with a already existing variable name but different data
a_list = "ok ok i am not a list";
a_list_ref = a_list;
assert_checktrue(export_to_hdf5(savefile, 'a_list', '-append'));
clear a_list
assert_checktrue(import_from_hdf5(savefile, 'a_list'));
assert_checkequal(a_list, a_list_ref);
