// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 9204 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=9204
//
// <-- Short Description -->
//    The Frobenius norm of a complex vector was numerically complex.


x = [1 2 3 -4];
x = x + %i * x;
assert_checkalmostequal(norm(x, 'fro'), 7.7459667);

x = [1 2;3 4];
x = x + %i * x;
assert_checkalmostequal(norm(x, 'fro'), 7.7459667);
