//
//  ViewController.swift
//  loginApp
//
//  Created by Дарина Самохина on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userTextField.text
    }
    


    //MARK: - IB Actions
    @IBAction func logInButtonDidPressed() {
        if userTextField.text != "Alexey" || passwordTextField.text != "1234" {
            showAlert(
                withTitle: "Invalid login or passworg",
                andMessage: "Please, enter correct login and password."
            )
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotUserNameButtonDidPressed() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is Alexey 😇")
    }
    
    @IBAction func forgorPasswordButtonDidPressed() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 1234 🤫")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        userTextField.text = ""
        passwordTextField.text = ""
    }
    
}

//MARK: - UIAlertController
extension UIViewController {
    func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        present(alert, animated: true)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
    }
}

