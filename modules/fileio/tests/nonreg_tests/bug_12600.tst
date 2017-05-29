// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - SCilab Enterprises
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 12600 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=12600
//
// <-- Short Description -->
// mput did not manage unsigned integer.

a_ref = iconvert(666,14);

fd = mopen(TMPDIR + "/bug_12600.dat", "wb");
mput(a_ref, "ui", fd);
mclose(fd);

fd = mopen(TMPDIR + "/bug_12600.dat", "rb");
a = mgeti(1, "ui", fd);
assert_checkequal(a_ref, a);
mclose(fd);
