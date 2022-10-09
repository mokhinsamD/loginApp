//
//  ViewController.swift
//  loginApp
//
//  Created by Дарина Самохина on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    //MARK: - Property
    let user = User.getInformationAboutUser()
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userTextField.text = user.login
        passwordTextField.text = user.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    //MARK: - IB Actions
    @IBAction func logInButtonDidPressed() {
        guard userTextField.text == user.login && passwordTextField.text == user.password else {
            showAlert(
                withTitle: "Invalid login or passworg",
                andMessage: "Please, enter correct login and password.",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(user.login) 😇")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \(user.password) 🤫")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
}

//MARK: - UIAlertController
extension UIViewController {
    func showAlert(
        withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
            //по нажатию на ОК стирается поле пароля, происходит код при нажатии на ОК
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        present(alert, animated: true)
        alert.addAction(okAction)
    }
}

