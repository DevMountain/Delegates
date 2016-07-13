//
//  ViewController.swift
//  Delegates
//
//  Created by Andrew Madsen on 7/13/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

	var textView: UITextView!
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Create a text view
		textView = UITextView(frame: CGRectInset(view.bounds, 22, 22))
		view.addSubview(textView)
		textView.layer.borderColor = UIColor.blackColor().CGColor
		textView.layer.borderWidth = 2.0
		
		textView.delegate = self
	}
	
	// MARK: - UITextViewDelegate
	
	func textViewDidChange(textView: UITextView) {
		print("Text did change to: \(textView.text)")
	}
	
	let vowels = NSCharacterSet(charactersInString: "AEIOUaeiou")
	func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
		if text.rangeOfCharacterFromSet(vowels) != nil {
			return false
		} else {
			return true
		}
	}
	
}

