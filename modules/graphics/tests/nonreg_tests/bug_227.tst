// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008-2008 - INRIA - Jean-Baptiste Silvy
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 227 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=227
//
// <-- Short Description -->
//     The plot3d plots an surface on an graphic window without a status bar on the bottom of the window.
//     After the surface is plotted, this status bar appear and the surface is redrawn.
//     So, every time I use plot3d, the surface is drawn twice

uu = -10:.1:10;
vv = -10:.1:10;
u = uu(ones(1,size(vv,2)),:);
v = vv(ones(1,size(uu,2)),:)';

// The Surface X(u,v) = (u,v, v^2 - u^2)
X = v.^2 - u.^2;

// should draw the figure only once
plot3d(uu,vv,X)
