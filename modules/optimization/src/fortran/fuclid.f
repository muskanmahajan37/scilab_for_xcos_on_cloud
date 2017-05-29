c Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
c Copyright (C) INRIA
c 
c This file must be used under the terms of the CeCILL.
c This source file is licensed as described in the file COPYING, which
c you should have received as part of this distribution.  The terms
c are also available at    
c http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
c
      subroutine fuclid (n,x,y,ps,izs,rzs,dzs)
c
      implicit double precision (a-h,o-z)
      dimension x(n),y(n),izs(*),dzs(*)
      real rzs(*)
      ps=0.d0
      do 10 i=1,n
   10 ps=ps+x(i)*y(i)
      return
      end
