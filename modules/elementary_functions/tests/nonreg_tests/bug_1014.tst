// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ????-2008 - INRIA - Allan CORNET <allan.cornet@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 1014 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=1014
//
// <-- Short Description -->
//    Nan bug (Windows)
//    b=%nan;
//    a=1/b
//
//    produces a "Division by zero" error

a=%nan;
b=1/a;
if isnan(b) <> %T then pause,end
