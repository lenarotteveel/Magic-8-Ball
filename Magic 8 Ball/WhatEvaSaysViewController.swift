//
//  whatEvaSaysViewController.swift
//  Magic 8 Ball
//
//  Created by Lena Rotteveel on 12/5/19.
//  Copyright © 2019 Lena Rotteveel. All rights reserved.
//

import UIKit

class WhatEvaSaysViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var questionLabel: UILabel!
    var eva = Eva()
    var question = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = question
        textView.text = eva.evaSpeaks() //shows your question in the label on the second view controller
    }
    @IBAction func onRestartButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "secondToFirstSegue", sender: self) //when restart button is tapped, go to first view controller
    }
}
