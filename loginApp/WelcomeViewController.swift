//
//  WelcomeViewController.swift
//  loginApp
//
//  Created by Дарина Самохина on 02.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingFor(userName)
    }
    
    private func greetingFor(_ name: String) {
        welcomeLabel.text = "Welcome, \(name)!"
    }
}
