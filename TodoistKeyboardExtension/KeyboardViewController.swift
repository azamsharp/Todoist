//
//  KeyboardViewController.swift
//  TodoistKeyboardExtension
//
//  Created by Mohammad Azam on 8/2/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 44))
        button.backgroundColor = UIColor.orangeColor()
        button.setTitle("Hello World", forState: UIControlState.Normal)
        
        self.view.addSubview(button)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    
        var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.Dark {
            textColor = UIColor.whiteColor()
        } else {
            textColor = UIColor.blackColor()
        }
       
    }

}
