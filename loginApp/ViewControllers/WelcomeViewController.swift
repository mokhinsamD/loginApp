//
//  WelcomeViewController.swift
//  loginApp
//
//  Created by Дарина Самохина on 02.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    let user = User.getInformationAboutUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.person.name) \(user.person.surname)!"
    }
}
