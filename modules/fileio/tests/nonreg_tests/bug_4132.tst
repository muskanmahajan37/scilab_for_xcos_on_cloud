// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 4132 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=4132
//
// <-- Short Description -->
// fullpath crashs and returns a exception message on windows

cd SCI;

filetoconvert = "modules/core";

ierr = execstr("fpath = fullpath(filetoconvert);","errcatch");
if ierr <> 0 then pause,end
