//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by John Heifetz on 06/08/2019.
//  Copyright © 2019 heif_team. All rights reserved.
//
import UIKit

class WelcomeViewController: UIViewController {
    
    var userName: String!
    
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Glad to see you again, \(userName ?? "NoName")"
    }
}
