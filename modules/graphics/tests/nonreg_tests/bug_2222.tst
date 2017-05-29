// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008-2008 - INRIA - Jean-Baptiste Silvy
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 2222 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=2222
//
// <-- Short Description -->
// Graphic is slow when lack drawlater/drawnow

stacksize(20000000);
data=ones(30000,100);
subplot(231)
plot(data)
xgrid
//now 
subplot(232)
plot(data)
xgrid
//and then until 
subplot(236)
xgrid
plot(data) 

// check that is not too slow and that the graphic window don't flicker



