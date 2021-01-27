//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Lena Rotteveel on 12/3/19.
//  Copyright © 2019 Lena Rotteveel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var magicEvaLabel: UILabel!
    @IBOutlet weak var questionTextField: UITextField!
    var eva = Eva()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButtonTapped(_ sender: Any) {
        if questionTextField.text?.count != 0 { //if there is something written in the text field, then the app moves on to the next view controller
            performSegue(withIdentifier: "firstToSecondSegue", sender: self) 
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! WhatEvaSaysViewController
        dvc.question = questionTextField.text!
    }
}

