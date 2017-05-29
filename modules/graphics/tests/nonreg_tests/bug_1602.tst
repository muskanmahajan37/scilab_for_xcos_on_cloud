// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2006-2008 - INRIA - Jean-Baptiste SILVY <jean-baptiste.silvy@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 1602 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=1602
//
// <-- Short Description -->
//    contour2d don't work well with frameflag=4 (while the workaround
//    which consists of providing frameflag=3 + rect=[xmin,ymin,xmax,ymax]
//    works). This is with a cvs version of yesterday. See an example
//    in steps to ...
//
//     Bruno

clf();

x = linspace(-0.95,0.95,80);
z = x'*x;  // z(x,y) = x*y in fact
clf()
contour2d(x,x,z,8,frameflag=4);
a = gca();

data_boundsRef = [ -0.95, -0.95 ; 0.95, 0.95 ] ;

// check that xfarc fill the arc and don't draw the limit
if a.data_bounds <> data_boundsRef  then pause,end
