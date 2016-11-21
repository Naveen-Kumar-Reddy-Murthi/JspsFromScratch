package org.mnr.plugin;

import java.applet.Applet;
import java.awt.Color;
import java.awt.Graphics;

public class AppletApp extends Applet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2971749775338694601L;
	
	public void paint(Graphics g){
		setBackground(Color.red);
		g.drawString("Applet is drawn", 50, 50);
	}

}
