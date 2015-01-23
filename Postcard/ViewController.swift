//
//  ViewController.swift
//  Postcard
//
//  Created by Mahmut Sefa on 23.01.15.
//  Copyright (c) 2015 fosh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
// added comment
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //label updates
        messageLabel.hidden = false
        nameLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        messageLabel.textColor = UIColor.redColor()
        
        //text field updates
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()

        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

