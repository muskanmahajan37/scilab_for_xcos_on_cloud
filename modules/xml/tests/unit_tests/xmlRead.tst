// ===========================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Sylvestre LEDRU
// Copyright (C) 2013 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// ===========================================================================

// <-- CLI SHELL MODE -->

xmlFile=xmlRead(SCI+"/etc/modules.xml");
assert_checktrue(xmlIsValidObject(xmlFile));
a=xmlGetOpenDocs();
if getos() == "Windows" then
    assert_checkequal(a(1).url, "file:///" + SCI+"/etc/modules.xml");
else
    assert_checkequal(a(1).url, SCI+"/etc/modules.xml");
end


content=xmlDump(xmlFile);
assert_checktrue(length(content)>0);
assert_checktrue(size(content)>=[20,1]);
xmlDelete(xmlFile);
// Delete the file a second time
msgerr = msprintf(gettext("%s: XML document does not exist.\n"), "xmlDelete");
assert_checkerror("xmlDelete(xmlFile)", msgerr);


xmlFile=xmlRead(SCI+"/etc/modules.xml");
assert_checktrue(xmlIsValidObject(xmlFile));
xmlFile2=xmlRead(SCI+"/etc/classpath.xml");
assert_checktrue(xmlIsValidObject(xmlFile2));

content=xmlDump(xmlFile);
content2=xmlDump(xmlFile2);
//assert_checkequal(content, content2);
assert_checktrue(length(content)>0);
assert_checktrue(size(content)>=[20,1]);
assert_checktrue(length(content2)>0);
assert_checktrue(size(content2)>=[20,1]);
xmlDelete(xmlFile);
xmlDelete(xmlFile2);
// Delete the file a second time
msgerr = msprintf(gettext("%s: XML document does not exist.\n"), "xmlDelete");
assert_checkerror("xmlDelete(xmlFile)", msgerr);

// Work with the structure
xmlFile=xmlRead(SCI+"/etc/modules.xml");
assert_checkequal(xmlFile.root.name,"modules");
assert_checkequal(xmlFile.root.type,"XML_ELEMENT_NODE");
elements=xmlFile.root.children;
assert_checktrue(xmlIsValidObject(elements));
assert_checktrue(size(elements)>0);
for (i=1:length(elements))
  if (xmlFile.root.children(i).type<>"XML_COMMENT_NODE")
    assert_checktrue(length(xmlFile.root.children(i).attributes.name)> 0);
    assert_checktrue(xmlFile.root.children(i).attributes.activate=="yes" ...
                   | xmlFile.root.children(i).attributes.activate=="no");
  else
// It is a comment, no attributes
    assert_checkequal(length(xmlFile.root.children(i).attributes),0);
  end
end
xmlDelete(xmlFile);
