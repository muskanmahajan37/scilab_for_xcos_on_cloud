% Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
% Copyright (C) DIGITEO - 2009 - Vincent COUVERT
% Copyright (C) INRIA - 2002-2004 - Vincent COUVERT
% 
% This file must be used under the terms of the CeCILL.
% This source file is licensed as described in the file COPYING, which
% you should have received as part of this distribution.  The terms
% are also available at    

% Definition of all cells used to test M2SCI

% Generic test cell (used in most of tests)
emptymatcell={'[]',...
	      'm2sciUnknownType([])',...
	      'm2sciUnknownDims([])'};

intmatcell={'[1]',...
	    '[1,2,3]',...
	    '[1;2;3]',...
	    '[1,2,3;4,5,6]',...
	    'm2sciUnknownType([1])',...
	    'm2sciUnknownType([1,2,3])',...
	    'm2sciUnknownType([1;2;3])',...
	    'm2sciUnknownType([1,2,3;4,5,6])',...
	    'm2sciUnknownDims([1])',...
	    'm2sciUnknownDims([1,2,3])',...
	    'm2sciUnknownDims([1;2;3])',...
	    'm2sciUnknownDims([1,2,3;4,5,6])'};

complexmatcell={'[i]',...
		'[i,2i,3i]',...
		'[i;2i;3i]',...
		'[i,2i,3i;4i,5i,6i]',...
		'm2sciUnknownType([i])',...
		'm2sciUnknownType([i,2i,3i])',...
		'm2sciUnknownType([i;2i;3i])',...
		'm2sciUnknownType([i,2i,3i;4i,5i,6i])',...
		'm2sciUnknownDims([i])',...
		'm2sciUnknownDims([i,2i,3i])',...
		'm2sciUnknownDims([i;2i;3i])',...
		'm2sciUnknownDims([i,2i,3i;4i,5i,6i])'};

stringmatcell={'[''s'']',...
	       '[''str1'']',...
	       '[''str1'',''str2'',''str3'']',...
	       '[''str1'';''str2'';''str3'']',...
	       '[''str1'',''str2'',''str3'';''str4'',''str5'',''str6'']',...
	       'm2sciUnknownType([''s''])',...
	       'm2sciUnknownType([''str1''])',...
	       'm2sciUnknownType([''str1'',''str2'',''str3''])',...
	       'm2sciUnknownType([''str1'';''str2'';''str3''])',...
	       'm2sciUnknownType([''str1'',''str2'',''str3'';''str4'',''str5'',''str6''])',...
	       'm2sciUnknownDims([''s''])',...
	       'm2sciUnknownDims([''str1''])',...
	       'm2sciUnknownDims([''str1'',''str2'',''str3''])',...
	       'm2sciUnknownDims([''str1'';''str2'';''str3''])',...
	       'm2sciUnknownDims([''str1'',''str2'',''str3'';''str4'',''str5'',''str6''])'};
	       
booleanmatcell={'[[1]==[1]]',...
		'[[1,2,3]==[1,0,3]]',...
		'[[1;2;3]==[1;0;3]]',...
		'[[1,2,3;4,5,6]==[1,0,3;4,5,0]]',...
		'm2sciUnknownType([[1]==[1]])',...
		'm2sciUnknownType([[1,2,3]==[1,0,3]])',...
		'm2sciUnknownType([[1;2;3]==[1;0;3]])',...
		'm2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]])',...
		'm2sciUnknownDims([[1]==[1]])',...
		'm2sciUnknownDims([[1,2,3]==[1,0,3]])',...
		'm2sciUnknownDims([[1;2;3]==[1;0;3]])',...
		'm2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]])'};

testcell = [emptymatcell,intmatcell,complexmatcell,stringmatcell, ...
            booleanmatcell];
numerictestcell = [emptymatcell,intmatcell,complexmatcell];
numerictestcellnotempty = [intmatcell,complexmatcell];
numericrealtestcell = [emptymatcell,intmatcell];
testcellnostring=[emptymatcell,intmatcell,complexmatcell, ...
                  booleanmatcell];
testcellnoboolean=[emptymatcell,intmatcell,complexmatcell,stringmatcell];
testcellnocomplex=[emptymatcell,intmatcell,booleanmatcell,stringmatcell];

% Other generic test cell (used for comparison with testcell...)
intmatcell1={'[1]',...
	     '[3,2,1]',...
	     '[3;2;1]',...
	     '[6,5,4;3,2,1]',...
	     'm2sciUnknownType([1])',...
	     'm2sciUnknownType([3,2,1])',...
	     'm2sciUnknownType([3;2;1])',...
	     'm2sciUnknownType([6,5,4;3,2,1])',...
	     'm2sciUnknownDims([1])',...
	     'm2sciUnknownDims([3,2,1])',...
	     'm2sciUnknownDims([3;2;1])',...
	     'm2sciUnknownDims([6,5,4;3,2,1])'};

complexmatcell1={'[i]',...
		 '[3i,2i,i]',...
		 '[3i;2i;i]',...
		 '[6i,5i,4i;3i,2i,i]',...
		 'm2sciUnknownType([i])',...
		 'm2sciUnknownType([3i,2i,i])',...
		 'm2sciUnknownType([3i;2i;i])',...
		 'm2sciUnknownType([6i,5i,4i;3i,2i,i])',...
		 'm2sciUnknownDims([i])',...
		 'm2sciUnknownDims([3i,2i,i])',...
		 'm2sciUnknownDims([3i;2i;i])',...
		 'm2sciUnknownDims([6i,5i,4i;3i,2i,i])'};

stringmatcell1={'[''s'']',...
		'[''str1'']',...
		'[''str3'',''str2'',''str1'']',...
		'[''str3'';''str2'';''str1'']',...
		'[''str6'',''str5'',''str4'';''str3'',''str2'',''str1'']',...
		'm2sciUnknownType([''s''])',...
		'm2sciUnknownType([''str1''])',...
		'm2sciUnknownType([''str3'',''str2'',''str1''])',...
		'm2sciUnknownType([''str3'';''str2'';''str1''])',...
		'm2sciUnknownType([''str6'',''str5'',''str4'';''str3'',''str2'',''str1''])',...
		'm2sciUnknownDims([''s''])',...
		'm2sciUnknownDims([''str1''])',...
		'm2sciUnknownDims([''str3'',''str2'',''str1''])',...
		'm2sciUnknownDims([''str3'';''str2'';''str1''])',...
		'm2sciUnknownDims([''str6'',''str5'',''str4'';''str3'',''str2'',''str1''])'};
		
booleanmatcell1={'[[1]==[1]]',...
		 '[[1,2,3]==[1,2,0]]',...
		 '[[1;2;3]==[1;2;0]]',...
		 '[[1,2,3;4,5,6]==[1,2,0;4,0,6]]',...
		 'm2sciUnknownType([[1]==[1]])',...
		 'm2sciUnknownType([[1,2,3]==[1,2,0]])',...
		 'm2sciUnknownType([[1;2;3]==[1;2;0]])',...
		 'm2sciUnknownType([[1,2,3;4,5,6]==[1,2,0;4,0,6]])',...
		 'm2sciUnknownDims([[1]==[1]])',...
		 'm2sciUnknownDims([[1,2,3]==[1,2,0]])',...
		 'm2sciUnknownDims([[1;2;3]==[1;2;0]])',...
		 'm2sciUnknownDims([[1,2,3;4,5,6]==[1,2,0;4,0,6]])'};

testcell1 = [emptymatcell,intmatcell1,complexmatcell1,stringmatcell1,booleanmatcell1];
numerictestcell1 = [emptymatcell,intmatcell1,complexmatcell1];
numerictestcellnotempty1 = [intmatcell1,complexmatcell1];
numericrealtestcell1 = [emptymatcell,intmatcell1];
testcell1noboolean=[emptymatcell,intmatcell1,complexmatcell1,stringmatcell1];

% Generic test cell containing only column vectors
% (used when Matlab require a vector as value)
intvectcell={'[1]',...
	     '[1,2,3]',...
	     '[1;2;3]',...
	     'm2sciUnknownType([1])',...
	     'm2sciUnknownType([1,2,3])',...
	     'm2sciUnknownType([1;2;3])',...
	     'm2sciUnknownDims([1])',...
	     'm2sciUnknownDims([1,2,3])',...
	     'm2sciUnknownDims([1;2;3])'};

complexvectcell={'[i]',...
		 '[i,2i,3i]',...
		 '[i;2i;3i]',...
		 'm2sciUnknownType([i])',...
		 'm2sciUnknownType([i,2i,3i])',...
		 'm2sciUnknownType([1+1i;2+2i;3+3i])',...
		 'm2sciUnknownDims([i])',...
		 'm2sciUnknownDims([i,2i,3i])',...
		 'm2sciUnknownDims([i;2i;3i])'};

stringvectcell={'[''str1'']',...
		'[''str1'',''str2'',''str3'']',...
		'[''str1'',''str2'',''str3'']''',...
		'm2sciUnknownType([''str1''])',...
		'm2sciUnknownType([''str1'',''str2'',''str3''])',...
		'm2sciUnknownType([''str1'',''str2'',''str3'']'')',...
		'm2sciUnknownDims([''str1''])',...
		'm2sciUnknownDims([''str1'',''str2'',''str3''])',...
		'm2sciUnknownDims([''str1'',''str2'',''str3'']'')'};

booleanvectcell={'[[1]==[1]]',...
		 '[[1,2,3]==[1,0,3]]',...
		 '[[1;2;3]==[1;0;3]]',...
		 'm2sciUnknownType([[1]==[1]])',...
		 'm2sciUnknownType([[1,2,3]==[1,0,3]])',...
		 'm2sciUnknownType([[1;2;3]==[1;0;3]])',...
		 'm2sciUnknownDims([[1]==[1]])',...
		 'm2sciUnknownDims([[1,2,3]==[1,0,3]])',...
		 'm2sciUnknownDims([[1;2;3]==[1;0;3]])'};

testcellvect=[emptymatcell,intvectcell,complexvectcell,stringvectcell,booleanvectcell];		
numerictestcellvect=[emptymatcell,intvectcell,complexvectcell];		
testcellvectnoboolean=[emptymatcell,intvectcell,complexvectcell,stringvectcell];		
testcellvectnocomplex=[emptymatcell,intvectcell,booleanvectcell,stringvectcell];		
testcellvectnotemptynostring=[intvectcell,booleanvectcell,complexvectcell];		
numerictestcellvectnoempty=[intvectcell,complexvectcell];	
% Generic test cell containing only square matrices
% Used when a square matrix is required by Matlab
intsqmatcell={'[1]',...
	      '[1,2,3;4,5,6;7,8,0]',...
	      'm2sciUnknownType([1])',...
	      'm2sciUnknownType([1,2,3;4,5,6;7,8,0])',...
	      'm2sciUnknownDims([1])',...
	      'm2sciUnknownDims([1,2,3;4,5,6;7,8,0])'};

complexsqmatcell={'[i]',...
		  '[i,2i,3i;4i,5i,6i;7i,8i,0]',...
		  'm2sciUnknownType([i])',...
		  'm2sciUnknownType([i,2i,3i;4i,5i,6i;7i,8i,0])',...
		  'm2sciUnknownDims([i])',...
		  'm2sciUnknownDims([i,2i,3i;4i,5i,6i;7i,8i,0])'};
		  
stringsqmatcell={'[''a'']',...
		 '[''a'',''0'',''0'';''d'',''0'',''f'';''g'',''h'',''0'']',...
		 'm2sciUnknownType([''a''])',...
		 'm2sciUnknownDims([''a'',''0'',''0'';''d'',''0'',''f'';''g'',''h'',''0''])',...
		 'm2sciUnknownDims([''a''])',...
		 'm2sciUnknownDims([''a'',''0'',''0'';''d'',''0'',''f'';''g'',''h'',''0''])'};

booleansqmatcell={'[[1]==[1]]',...
		  '[[1,2,3;4,5,6;7,8,9]==[1,0,3;4,5,0;0,8,9]]',...
		  'm2sciUnknownType([[1]==[1]])',...
		  'm2sciUnknownType([[1,2,3;4,5,6;7,8,9]==[1,0,3;4,5,0;0,8,9]])',...
		  'm2sciUnknownDims([[1]==[1]])',...
		  'm2sciUnknownDims([[1,2,3;4,5,6;7,8,9]==[1,0,3;4,5,0;0,8,9]])'};

testcellsq=[emptymatcell,intsqmatcell,complexsqmatcell,stringsqmatcell,booleansqmatcell];
testcellsqnoboolean=[emptymatcell,intsqmatcell,complexsqmatcell,stringsqmatcell];
numerictestcellsq=[emptymatcell,intsqmatcell,complexsqmatcell];

% Generic test cell containing (used for functions such as ceil...)
floatmatcell={'[1.1]',...
	      '[1.1,2.2,3.3]',...
	      '[1.1;2.2;3.3]',...
	      '[1.1,2.2,3.3;4.4,5.5,6.6]',...
	      '[1.1+1.1i]',...
	      '[1.1+1.1i,2.2+2.2i,3.3+3.3i]',...
	      '[1.1+1.1i;2.2+2.2i;3.3+3.3i]',...
	      '[1.1+1.1i,2.2+2.2i,3.3+3.3i;4.4+4.4i,5.5+5.5i,6.6+6.6i]',...
	      'm2sciUnknownType([1.1])',...
	      'm2sciUnknownType([1.1,2.2,3.3])',...
	      'm2sciUnknownType([1.1;2.2;3.3])',...
	      'm2sciUnknownType([1.1,2.2,3.3;4.4,5.5,6.6])',...
	      'm2sciUnknownType([1.1+1.1i])',...
	      'm2sciUnknownType([1.1+1.1i,2.2+2.2i,3.3+3.3i])',...
	      'm2sciUnknownType([1.1+1.1i;2.2+2.2i;3.3+3.3i])',...
	      'm2sciUnknownType([1.1+1.1i,2.2+2.2i,3.3+3.3i;4.4+4.4i,5.5+5.5i,6.6+6.6i])',...
	      'm2sciUnknownDims([1.1])',...
	      'm2sciUnknownDims([1.1,2.2,3.3])',...
	      'm2sciUnknownDims([1.1;2.2;3.3])',...
	      'm2sciUnknownDims([1.1,2.2,3.3;4.4,5.5,6.6])',...
	      'm2sciUnknownDims([1.1+1.1i])',...
	      'm2sciUnknownDims([1.1+1.1i,2.2+2.2i,3.3+3.3i])',...
	      'm2sciUnknownDims([1.1+1.1i;2.2+2.2i;3.3+3.3i])',...
	      'm2sciUnknownDims([1.1+1.1i,2.2+2.2i,3.3+3.3i;4.4+4.4i,5.5+5.5i,6.6+6.6i])'};

testcellfloat =[emptymatcell,intmatcell,complexmatcell,stringmatcell,booleanmatcell,floatmatcell]; 
testcellfloatnoboolean=[emptymatcell,intmatcell,complexmatcell,stringmatcell,floatmatcell];

