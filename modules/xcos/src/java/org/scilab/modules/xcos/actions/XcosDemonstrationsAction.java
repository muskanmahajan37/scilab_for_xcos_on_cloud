/*
 * Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) 2009 - DIGITEO - Allan SIMON
 * Copyright (C) 2010 - DIGITEO - Clement DAVID
 *
 * This file must be used under the terms of the CeCILL.
 * This source file is licensed as described in the file COPYING, which
 * you should have received as part of this distribution.  The terms
 * are also available at
 * http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
 *
 */

package org.scilab.modules.xcos.actions;

import java.awt.event.ActionEvent;

import javax.swing.JButton;

import org.scilab.modules.action_binding.highlevel.ScilabInterpreterManagement;
import org.scilab.modules.graph.ScilabComponent;
import org.scilab.modules.graph.ScilabGraph;
import org.scilab.modules.graph.actions.base.DefaultAction;
import org.scilab.modules.gui.menuitem.MenuItem;
import org.scilab.modules.xcos.graph.XcosDiagram;
import org.scilab.modules.xcos.utils.XcosMessages;

/**
 * View Xcos demos
 */
@SuppressWarnings(value = { "serial" })
public final class XcosDemonstrationsAction extends DefaultAction {
    /** Name of the action */
    public static final String NAME = XcosMessages.XCOS_DEMONSTRATIONS;
    /** Icon name of the action */
    public static final String SMALL_ICON = "applications-system";
    /** Mnemonic key of the action */
    public static final int MNEMONIC_KEY = 0;
    /** Accelerator key for the action */
    public static final int ACCELERATOR_KEY = 0;

    /**
     * Constructor
     *
     * @param scilabGraph
     *            corresponding Scilab Graph
     */
    public XcosDemonstrationsAction(ScilabGraph scilabGraph) {
        super(scilabGraph);
    }

    /**
     * Create a button for a graph toolbar
     *
     * @param scilabGraph
     *            corresponding Scilab Graph
     * @return the button
     */
    public static JButton createButton(ScilabGraph scilabGraph) {
        return createButton(scilabGraph, XcosDemonstrationsAction.class);
    }

    /**
     * Create a menu for a graph menubar
     *
     * @param scilabGraph
     *            corresponding Scilab Graph
     * @return the menu
     */
    public static MenuItem createMenu(ScilabGraph scilabGraph) {
        return createMenu(scilabGraph, XcosDemonstrationsAction.class);
    }

    /**
     * Action associated
     *
     * @param e
     *            the event
     * @see org.scilab.modules.gui.events.callback.CallBack#actionPerformed(java.awt.event.ActionEvent)
     */
    @Override
    public void actionPerformed(ActionEvent e) {
        final XcosDiagram graph = (XcosDiagram) getGraph(e);

        // action disabled when the cell is edited
        final ScilabComponent comp = ((ScilabComponent) graph.getAsComponent());
        if (comp.isEditing()) {
            return;
        }

        ScilabInterpreterManagement.requestScilabExec("exec(\"" + System.getenv("SCI") + "/modules/xcos/demos/xcos_demos.sce\", -1)");
    }
}
