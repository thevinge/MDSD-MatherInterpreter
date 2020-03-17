package org.xtext.mdsd.ui

import com.google.inject.Inject
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.util.Diagnostician
import org.eclipse.xtext.ui.editor.hover.html.DefaultEObjectHoverProvider

import static extension org.eclipse.emf.ecore.util.EcoreUtil.*

import org.xtext.mdsd.mathinterpreter.Expression
import org.xtext.mdsd.generator.MathinterpreterGenerator
import org.xtext.mdsd.mathinterpreter.MathExp
import org.xtext.mdsd.mathinterpreter.Parenthesis
import org.xtext.mdsd.mathinterpreter.FunctionalBind
import org.xtext.mdsd.mathinterpreter.Variable
import org.xtext.mdsd.mathinterpreter.VarReference

class ExpressionsEObjectHoverProvider extends DefaultEObjectHoverProvider {

	@Inject extension MathinterpreterGenerator

	override getHoverInfoAsHtml(EObject obj) {

		switch (obj) {
			MathExp: '''
				<p>
				«obj.display» = «obj.compute»
				</p>
			'''
			FunctionalBind: '''
				<p>
				«obj.displayExp» = «obj.computeExp»
				</p>
			'''
			Parenthesis: '''
				<p>
				«obj.displayExp» = «obj.computeExp»
				</p>
			'''
			Variable: '''
				<p>
				«obj.displayExp» 
				</p>
			'''
			default:
				super.getHoverInfoAsHtml(obj)
		}
	}
}
