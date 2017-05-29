// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) INRIA
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt

function [s]=%lss_c_r(s1,s2)
    //s=%lss_c_r(s1,s2) iff s=[s1,s2]

    [s1,s2]=sysconv(s1,s2);s=[s1,s2];
endfunction