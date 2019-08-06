//
//  ViewController.swift
//  LoginApp
//
//  Created by John Heifetz on 06/08/2019.
//  Copyright © 2019 heif_team. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    private let username = "Alexey"
    private let password = "Efimov"
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "signUpSegue" else { return }
        let welcomeBoard = segue.destination as! WelcomeViewController
        welcomeBoard.userName = userNameTextField.text
    }
    
    @IBAction func loginButtonPressed() {
        guard
            userNameTextField.text == username,
            passwordTextField.text == password
            else {
            showAlert(title: "Invalid username or password",
                      message: "Please input correct username or password")
                return
        }
        performSegue(withIdentifier: "signUpSegue", sender: nil)
    }
    
    @IBAction func forgotUsernameAction() {
        showAlert(title: "Don't forget!", message: "Your username is: \(username)")
    }
    
    @IBAction func forgotPassAction() {
        showAlert(title: "Don't forget!", message: "Your password is: \(password)")
    }
    
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(defaultAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
