/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.scilab.modules.localization;


/**
  * @author Sylvestre Ledru
  * @copyright DIGITEO 2008
  */
public class Messages {

    /**
      * Constructor
      */
    protected Messages() {
        throw new UnsupportedOperationException();
    }
    public static String gettext(String key) {
        return MessagesJNI.gettext(key);
    }

    public static String dgettext(String domain, String key) {
        return MessagesJNI.dgettext(domain, key);
    }

}
