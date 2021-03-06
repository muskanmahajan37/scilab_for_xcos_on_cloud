/*
 * Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) 2009 - DIGITEO - Antoine ELIAS
 *
 * This file must be used under the terms of the CeCILL.
 * This source file is licensed as described in the file COPYING, which
 * you should have received as part of this distribution.  The terms
 * are also available at
 * http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
 *
 */

package org.scilab.modules.gui.messagebox;

import java.awt.Component;

import javax.swing.Action;

import org.scilab.modules.gui.tab.SimpleTab;
import org.scilab.modules.localization.Messages;

/**
 * Standard class to manage dialogs inside Scilab applications such as Xcos et
 * Editor
 *
 * @author Antoine ELIAS
 */
public final class ScilabModalDialog {

    /**
     * Message box button type
     */
    public enum ButtonType {
        OK,
        OK_CANCEL,
        YES_NO,
        YES_NO_CANCEL,
        CANCEL_OR_SAVE_AND_EXECUTE
    }

    /**
     * Message box button type
     */

    public enum IconType {
        ERROR_ICON,
        INFORMATION_ICON,
        PASSWORD_ICON,
        QUESTION_ICON,
        WARNING_ICON,
        SCILAB_ICON
    }

    public enum AnswerOption {
        OK_OPTION,
        CANCEL_OPTION,
        YES_OPTION,
        NO_OPTION,
        SAVE_EXECUTE_OPTION
    }

    /**
     * private constructor, only static functions
     */
    private ScilabModalDialog() {
    }

    /**
     * @param messages
     *            : messages to display
     * @param parent
     *            : tab to be used to set the location of the messagebox
     * @param title
     *            : title of the message box default icon "scilab" default
     *            button "OK"
     * @return index of the selected button
     */
    public static AnswerOption show(SimpleTab parent, String[] messages) {
        return show(parent, messages, Messages.gettext("Scilab Message"),
                    IconType.SCILAB_ICON, ButtonType.OK);
    }

    /**
     * @param message
     *            : message to display
     * @param parent
     *            : tab to be used to set the location of the messagebox
     * @param title
     *            : title of the message box default icon "scilab" default
     *            button "OK"
     * @return index of the selected button
     */
    public static AnswerOption show(SimpleTab parent, String message) {
        return show(parent, new String[] { message },
                    Messages.gettext("Scilab Message"), IconType.SCILAB_ICON,
                    ButtonType.OK);
    }

    /**
     * @param messages
     *            : messages to display
     * @param parent
     *            : tab to be used to set the location of the messagebox
     * @param title
     *            : title of the message box default icon "Warning" default
     *            button "OK"
     * @return index of the selected button
     */
    public static AnswerOption show(SimpleTab parent, String[] messages, String title) {
        return show(parent, messages, title, IconType.SCILAB_ICON,
                    ButtonType.OK);
    }

    /**
     * @param message
     *            : message to display
     * @param parent
     *            : tab to be used to set the location of the messagebox
     * @param title
     *            : title of the message box default icon "Warning" default
     *            button "OK"
     * @return index of the selected button
     */
    public static AnswerOption show(SimpleTab parent, String message, String title) {
        return show(parent, new String[] { message }, title,
                    IconType.SCILAB_ICON, ButtonType.OK);
    }

    /**
     * @param messages
     *            : messages to display
     * @param parent
     *            : tab to be used to set the location of the messagebox
     * @param title
     *            : title of the message box
     * @param iconType
     *            : message box icon ( see IconType )
     * @return index of the selected button
     */
    public static AnswerOption show(SimpleTab parent, String[] messages,
                                    String title, ScilabModalDialog.IconType iconType) {
        return show(parent, messages, title, iconType, ButtonType.OK);
    }

    /**
     * @param message
     *            : message to display
     * @param parent
     *            : tab to be used to set the location of the messagebox
     * @param title
     *            : title of the message box
     * @param iconType
     *            : message box icon ( see IconType )
     * @return index of the selected button
     */
    public static AnswerOption show(SimpleTab parent, String message, String title,
                                    ScilabModalDialog.IconType iconType) {
        return show(parent, new String[] { message }, title, iconType,
                    ButtonType.OK);
    }

    /**
     * @param message
     *            : message to display
     * @param parent
     *            : tab to be used to set the location of the messagebox
     * @param title
     *            : title of the message box
     * @param iconType
     *            : message box icon ( see IconType )
     * @param buttonType
     *            : message box type ( see ButtonType )
     * @return index of the selected button
     */
    public static AnswerOption show(SimpleTab parent, String message, String title,
                                    ScilabModalDialog.IconType iconType,
                                    ScilabModalDialog.ButtonType buttonType) {
        return show(parent, new String[] { message }, title, iconType,
                    buttonType);
    }

    /**
     * @param messages
     *            : messages to display
     * @param parent
     *            : tab to be used to set the location of the messagebox
     * @param title
     *            : title of the message box
     * @param iconType
     *            : message box icon ( see IconType )
     * @param buttonType
     *            : message box type ( see ButtonType )
     * @return index of the selected button
     */
    public static AnswerOption show(SimpleTab parent, String[] messages,
                                    String title, ScilabModalDialog.IconType iconType,
                                    ScilabModalDialog.ButtonType buttonType) {
        final Component c;
        if (parent == null) {
            c = null;
        } else {
            c = (Component) parent;
        }
        return show(c, messages, title, iconType, buttonType);
    }

    /**
     * @param messages
     *            : messages to display
     * @param parent
     *            : component to be used to set the location of the messagebox
     * @param title
     *            : title of the message box
     * @param iconType
     *            : message box icon ( see IconType )
     * @param buttonType
     *            : message box type ( see ButtonType )
     * @return index of the selected button
     */
    public static AnswerOption show(Component parent, String[] messages,
                                    String title, ScilabModalDialog.IconType iconType,
                                    ScilabModalDialog.ButtonType buttonType) {
        return show(parent, messages, title, iconType, buttonType, null, null);
    }

    /**
     * @param messages
     *            : messages to display
     * @param parent
     *            : component to be used to set the location of the messagebox
     * @param title
     *            : title of the message box
     * @param iconType
     *            : message box icon ( see IconType )
     * @param buttonType
     *            : message box type ( see ButtonType )
     * @return index of the selected button
     */
    public static AnswerOption show(Component parent, String[] messages,
                                    String title, ScilabModalDialog.IconType iconType,
                                    ScilabModalDialog.ButtonType buttonType, String checkboxMessage, Action checkboxAction) {

        System.out.println(String.join("\n", messages));

        int choice = 0; // zero indexed

        AnswerOption answer = AnswerOption.OK_OPTION;

        switch (buttonType) {
            case OK: // OK
                answer = AnswerOption.OK_OPTION;
                break;
            case OK_CANCEL:
                if (choice == 0) { // OK
                    answer = AnswerOption.OK_OPTION;
                } else { // Cancel
                    answer = AnswerOption.CANCEL_OPTION;
                }
                break;
            case YES_NO:
                if (choice == 0) { // Yes
                    answer = AnswerOption.YES_OPTION;
                } else { // No
                    answer = AnswerOption.NO_OPTION;
                }
                break;
            case YES_NO_CANCEL:
                if (choice == 0) { // Yes
                    answer = AnswerOption.YES_OPTION;
                } else if (choice == 1) { // No
                    answer = AnswerOption.NO_OPTION;
                } else { // Cancel
                    answer = AnswerOption.CANCEL_OPTION;
                }
                break;
            case CANCEL_OR_SAVE_AND_EXECUTE:
                if (choice == 0) { // Yes
                    answer = AnswerOption.CANCEL_OPTION;
                } else if (choice == 1) { // No
                    answer = AnswerOption.SAVE_EXECUTE_OPTION;
                }
                break;
        }
        return answer;
    }
}
