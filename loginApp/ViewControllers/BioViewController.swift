//
//  BioViewController.swift
//  loginApp
//
//  Created by Дарина Самохина on 09.10.2022.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var bioNavigationBar: UINavigationItem!
    
    let user = User.getInformationAboutUser()

    override func viewDidLoad() {
        super.viewDidLoad()
        bioNavigationBar.title = "\(user.person.name) \(user.person.surname) Bio"
    }
}
