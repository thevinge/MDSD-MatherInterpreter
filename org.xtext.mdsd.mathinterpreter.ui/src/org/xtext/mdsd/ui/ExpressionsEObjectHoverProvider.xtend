package org.xtext.mdsd.ui

import com.google.inject.Inject
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.util.Diagnostician
import org.eclipse.xtext.ui.editor.hover.html.DefaultEObjectHoverProvider


import static extension org.eclipse.emf.ecore.util.EcoreUtil.*

class ExpressionsEObjectHoverProvider extends DefaultEObjectHoverProvider {

	override getHoverInfoAsHtml(EObject o) {
		
			return '''
				<p>
				type  : <b>Test</b> <br>
				value : <b></b>
				</p>
			'''
		
	}

	
}