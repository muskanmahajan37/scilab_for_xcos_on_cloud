#include "SciDocMain.hxx"
/* Generated by GIWS (version 2.0.2) with command:
giws --disable-return-size-array --output-dir src/jni/ --throws-exception-on-error --description-file src/jni/BuildDocObjectv2.giws.xml
*/
/*

This is generated code.

This software is a computer program whose purpose is to hide the complexity
of accessing Java objects/methods from C++ code.

This software is governed by the CeCILL-B license under French law and
abiding by the rules of distribution of free software.  You can  use,
modify and/ or redistribute the software under the terms of the CeCILL-B
license as circulated by CEA, CNRS and INRIA at the following URL
"http://www.cecill.info".

As a counterpart to the access to the source code and  rights to copy,
modify and redistribute granted by the license, users are provided only
with a limited warranty  and the software's author,  the holder of the
economic rights,  and the successive licensors  have only  limited
liability.

In this respect, the user's attention is drawn to the risks associated
with loading,  using,  modifying and/or developing or reproducing the
software by the user in light of its specific status of free software,
that may mean  that it is complicated to manipulate,  and  that  also
therefore means  that it is reserved for developers  and  experienced
professionals having in-depth computer knowledge. Users are therefore
encouraged to load and test the software's suitability as regards their
requirements in conditions enabling the security of their systems and/or
data to be ensured and,  more generally, to use and operate it in the
same conditions as regards security.

The fact that you are presently reading this means that you have had
knowledge of the CeCILL-B license and that you accept its terms.
*/

namespace org_scilab_modules_helptools {

                // Static declarations (if any)
                
// Returns the current env

JNIEnv * SciDocMain::getCurrentEnv() {
JNIEnv * curEnv = NULL;
jint res=this->jvm->AttachCurrentThread(reinterpret_cast<void **>(&curEnv), NULL);
if (res != JNI_OK) {
throw GiwsException::JniException(getCurrentEnv());
}
return curEnv;
}
// Destructor

SciDocMain::~SciDocMain() {
JNIEnv * curEnv = NULL;
this->jvm->AttachCurrentThread(reinterpret_cast<void **>(&curEnv), NULL);
curEnv->DeleteGlobalRef(this->instance);
curEnv->DeleteGlobalRef(this->instanceClass);
}
// Constructors
SciDocMain::SciDocMain(JavaVM * jvm_) {
jmethodID constructObject = NULL ;
jobject localInstance ;
jclass localClass ;

const std::string construct="<init>";
const std::string param="()V";
jvm=jvm_;

JNIEnv * curEnv = getCurrentEnv();

localClass = curEnv->FindClass( this->className().c_str() ) ;
if (localClass == NULL) {
  throw GiwsException::JniClassNotFoundException(curEnv, this->className());
}

this->instanceClass = static_cast<jclass>(curEnv->NewGlobalRef(localClass));

/* localClass is not needed anymore */
curEnv->DeleteLocalRef(localClass);

if (this->instanceClass == NULL) {
throw GiwsException::JniObjectCreationException(curEnv, this->className());
}


constructObject = curEnv->GetMethodID( this->instanceClass, construct.c_str() , param.c_str() ) ;
if(constructObject == NULL){
throw GiwsException::JniObjectCreationException(curEnv, this->className());
}

localInstance = curEnv->NewObject( this->instanceClass, constructObject ) ;
if(localInstance == NULL){
throw GiwsException::JniObjectCreationException(curEnv, this->className());
}
 
this->instance = curEnv->NewGlobalRef(localInstance) ;
if(this->instance == NULL){
throw GiwsException::JniObjectCreationException(curEnv, this->className());
}
/* localInstance not needed anymore */
curEnv->DeleteLocalRef(localInstance);

                /* Methods ID set to NULL */
voidbuildDocumentationjstringjava_lang_StringID=NULL;
jbooleansetOutputDirectoryjstringjava_lang_StringID=NULL;
voidsetWorkingLanguagejstringjava_lang_StringID=NULL;
voidsetExportFormatjstringjava_lang_StringID=NULL;
voidsetIsToolboxjbooleanbooleanID=NULL;
jstringprocessjstringjava_lang_Stringjstringjava_lang_StringID=NULL;
voidgenerateJavahelpjstringjava_lang_Stringjstringjava_lang_StringjbooleanbooleanID=NULL;


}

SciDocMain::SciDocMain(JavaVM * jvm_, jobject JObj) {
        jvm=jvm_;

        JNIEnv * curEnv = getCurrentEnv();

jclass localClass = curEnv->GetObjectClass(JObj);
        this->instanceClass = static_cast<jclass>(curEnv->NewGlobalRef(localClass));
        curEnv->DeleteLocalRef(localClass);

        if (this->instanceClass == NULL) {
throw GiwsException::JniObjectCreationException(curEnv, this->className());
        }

        this->instance = curEnv->NewGlobalRef(JObj) ;
        if(this->instance == NULL){
throw GiwsException::JniObjectCreationException(curEnv, this->className());
        }
        /* Methods ID set to NULL */
        voidbuildDocumentationjstringjava_lang_StringID=NULL;
jbooleansetOutputDirectoryjstringjava_lang_StringID=NULL;
voidsetWorkingLanguagejstringjava_lang_StringID=NULL;
voidsetExportFormatjstringjava_lang_StringID=NULL;
voidsetIsToolboxjbooleanbooleanID=NULL;
jstringprocessjstringjava_lang_Stringjstringjava_lang_StringID=NULL;
voidgenerateJavahelpjstringjava_lang_Stringjstringjava_lang_StringjbooleanbooleanID=NULL;


}

// Generic methods

void SciDocMain::synchronize() {
if (getCurrentEnv()->MonitorEnter(instance) != JNI_OK) {
throw GiwsException::JniMonitorException(getCurrentEnv(), "SciDocMain");
}
}

void SciDocMain::endSynchronize() {
if ( getCurrentEnv()->MonitorExit(instance) != JNI_OK) {
throw GiwsException::JniMonitorException(getCurrentEnv(), "SciDocMain");
}
}
// Method(s)

void SciDocMain::buildDocumentation (char const* type){

JNIEnv * curEnv = getCurrentEnv();

if (voidbuildDocumentationjstringjava_lang_StringID==NULL) { /* Use the cache */
 voidbuildDocumentationjstringjava_lang_StringID = curEnv->GetMethodID(this->instanceClass, "buildDocumentation", "(Ljava/lang/String;)V" ) ;
if (voidbuildDocumentationjstringjava_lang_StringID == NULL) {
throw GiwsException::JniMethodNotFoundException(curEnv, "buildDocumentation");
}
}
jstring type_ = curEnv->NewStringUTF( type );
if (type != NULL && type_ == NULL)
{
throw GiwsException::JniBadAllocException(curEnv);
}


                         curEnv->CallVoidMethod( this->instance, voidbuildDocumentationjstringjava_lang_StringID ,type_);
                        curEnv->DeleteLocalRef(type_);

}

bool SciDocMain::setOutputDirectory (char const* directory){

JNIEnv * curEnv = getCurrentEnv();

if (jbooleansetOutputDirectoryjstringjava_lang_StringID==NULL) { /* Use the cache */
 jbooleansetOutputDirectoryjstringjava_lang_StringID = curEnv->GetMethodID(this->instanceClass, "setOutputDirectory", "(Ljava/lang/String;)Z" ) ;
if (jbooleansetOutputDirectoryjstringjava_lang_StringID == NULL) {
throw GiwsException::JniMethodNotFoundException(curEnv, "setOutputDirectory");
}
}
jstring directory_ = curEnv->NewStringUTF( directory );
if (directory != NULL && directory_ == NULL)
{
throw GiwsException::JniBadAllocException(curEnv);
}


                        jboolean res =  static_cast<jboolean>( curEnv->CallBooleanMethod( this->instance, jbooleansetOutputDirectoryjstringjava_lang_StringID ,directory_));
                        curEnv->DeleteLocalRef(directory_);

return (res == JNI_TRUE);

}

void SciDocMain::setWorkingLanguage (char const* language){

JNIEnv * curEnv = getCurrentEnv();

if (voidsetWorkingLanguagejstringjava_lang_StringID==NULL) { /* Use the cache */
 voidsetWorkingLanguagejstringjava_lang_StringID = curEnv->GetMethodID(this->instanceClass, "setWorkingLanguage", "(Ljava/lang/String;)V" ) ;
if (voidsetWorkingLanguagejstringjava_lang_StringID == NULL) {
throw GiwsException::JniMethodNotFoundException(curEnv, "setWorkingLanguage");
}
}
jstring language_ = curEnv->NewStringUTF( language );
if (language != NULL && language_ == NULL)
{
throw GiwsException::JniBadAllocException(curEnv);
}


                         curEnv->CallVoidMethod( this->instance, voidsetWorkingLanguagejstringjava_lang_StringID ,language_);
                        curEnv->DeleteLocalRef(language_);

}

void SciDocMain::setExportFormat (char const* format){

JNIEnv * curEnv = getCurrentEnv();

if (voidsetExportFormatjstringjava_lang_StringID==NULL) { /* Use the cache */
 voidsetExportFormatjstringjava_lang_StringID = curEnv->GetMethodID(this->instanceClass, "setExportFormat", "(Ljava/lang/String;)V" ) ;
if (voidsetExportFormatjstringjava_lang_StringID == NULL) {
throw GiwsException::JniMethodNotFoundException(curEnv, "setExportFormat");
}
}
jstring format_ = curEnv->NewStringUTF( format );
if (format != NULL && format_ == NULL)
{
throw GiwsException::JniBadAllocException(curEnv);
}


                         curEnv->CallVoidMethod( this->instance, voidsetExportFormatjstringjava_lang_StringID ,format_);
                        curEnv->DeleteLocalRef(format_);

}

void SciDocMain::setIsToolbox (bool isToolbox){

JNIEnv * curEnv = getCurrentEnv();

if (voidsetIsToolboxjbooleanbooleanID==NULL) { /* Use the cache */
 voidsetIsToolboxjbooleanbooleanID = curEnv->GetMethodID(this->instanceClass, "setIsToolbox", "(Z)V" ) ;
if (voidsetIsToolboxjbooleanbooleanID == NULL) {
throw GiwsException::JniMethodNotFoundException(curEnv, "setIsToolbox");
}
}
jboolean isToolbox_ = (static_cast<bool>(isToolbox) ? JNI_TRUE : JNI_FALSE);

                         curEnv->CallVoidMethod( this->instance, voidsetIsToolboxjbooleanbooleanID ,isToolbox_);
                        
}

char* SciDocMain::process (char const* sourceDoc, char const* styleSheet){

JNIEnv * curEnv = getCurrentEnv();

if (jstringprocessjstringjava_lang_Stringjstringjava_lang_StringID==NULL) { /* Use the cache */
 jstringprocessjstringjava_lang_Stringjstringjava_lang_StringID = curEnv->GetMethodID(this->instanceClass, "process", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;" ) ;
if (jstringprocessjstringjava_lang_Stringjstringjava_lang_StringID == NULL) {
throw GiwsException::JniMethodNotFoundException(curEnv, "process");
}
}
jstring sourceDoc_ = curEnv->NewStringUTF( sourceDoc );
if (sourceDoc != NULL && sourceDoc_ == NULL)
{
throw GiwsException::JniBadAllocException(curEnv);
}


jstring styleSheet_ = curEnv->NewStringUTF( styleSheet );
if (styleSheet != NULL && styleSheet_ == NULL)
{
throw GiwsException::JniBadAllocException(curEnv);
}


                        jstring res =  static_cast<jstring>( curEnv->CallObjectMethod( this->instance, jstringprocessjstringjava_lang_Stringjstringjava_lang_StringID ,sourceDoc_, styleSheet_));
                        if (curEnv->ExceptionCheck()) {
throw GiwsException::JniCallMethodException(curEnv);
}if (res != NULL) { 

const char *tempString = curEnv->GetStringUTFChars(res, 0);
char * myStringBuffer = new char[strlen(tempString) + 1];
strcpy(myStringBuffer, tempString);
curEnv->ReleaseStringUTFChars(res, tempString);
curEnv->DeleteLocalRef(res);
curEnv->DeleteLocalRef(sourceDoc_);
curEnv->DeleteLocalRef(styleSheet_);

return myStringBuffer;
 } else { 
curEnv->DeleteLocalRef(res);
return NULL;
}
}

void SciDocMain::generateJavahelp (JavaVM * jvm_, char const* outputDir, char const* language, bool isToolbox){

JNIEnv * curEnv = NULL;
jvm_->AttachCurrentThread(reinterpret_cast<void **>(&curEnv), NULL);
jclass cls = initClass(curEnv);
if ( cls == NULL) {
throw GiwsException::JniCallMethodException(curEnv);
}

static jmethodID voidgenerateJavahelpjstringjava_lang_Stringjstringjava_lang_StringjbooleanbooleanID = curEnv->GetStaticMethodID(cls, "generateJavahelp", "(Ljava/lang/String;Ljava/lang/String;Z)V" ) ;
if (voidgenerateJavahelpjstringjava_lang_Stringjstringjava_lang_StringjbooleanbooleanID == NULL) {
throw GiwsException::JniMethodNotFoundException(curEnv, "generateJavahelp");
}

jstring outputDir_ = curEnv->NewStringUTF( outputDir );
if (outputDir != NULL && outputDir_ == NULL)
{
throw GiwsException::JniBadAllocException(curEnv);
}


jstring language_ = curEnv->NewStringUTF( language );
if (language != NULL && language_ == NULL)
{
throw GiwsException::JniBadAllocException(curEnv);
}


jboolean isToolbox_ = (static_cast<bool>(isToolbox) ? JNI_TRUE : JNI_FALSE);

                         curEnv->CallStaticVoidMethod(cls, voidgenerateJavahelpjstringjava_lang_Stringjstringjava_lang_StringjbooleanbooleanID ,outputDir_, language_, isToolbox_);
                        curEnv->DeleteLocalRef(outputDir_);
curEnv->DeleteLocalRef(language_);
if (curEnv->ExceptionCheck()) {
throw GiwsException::JniCallMethodException(curEnv);
}
}

}
