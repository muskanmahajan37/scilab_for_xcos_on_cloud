// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2007-2008 - INRIA
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

//===============================
str = "This is a simple string";
r = strstr (str,"simple");
if r <> 'simple string' then pause,end;
//===============================
r = strstr (str,"sample");
if r <> '' then pause,end;
//===============================
if strstr('','')<>'' then pause,end;
//===============================
str1 ='1A2s 2';
str2 ='1B3sc2';
str3 ='1C4sci2';
STR = [str1;str2;str3];
r = strstr (STR,"s");
if r <> ['s 2';'sc2';'sci2'] then pause,end;
//===============================
r = strstr (STR,'');
if r <> STR then pause,end;
//===============================
r = strstr (STR,['A';'3';'i']);
if r <> ['A2s 2';'3sc2';'sci2'] then pause,end;
//===============================
r = strstr (STR,['';'';'']);
if r <> STR then pause,end;
//===============================