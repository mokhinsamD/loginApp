//
//  UserViewController.swift
//  loginApp
//
//  Created by Дарина Самохина on 09.10.2022.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet var avatarImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var hairColorLabel: UILabel!
    @IBOutlet var eyesColorLabel: UILabel!
    @IBOutlet var careerLabel: UILabel!
    
    @IBOutlet var userNavigationBar: UINavigationItem!
    
    let user = User.getInformationAboutUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNavigationBar.title = "\(user.person.name) \(user.person.surname)"
    
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        hairColorLabel.text = user.person.hairColor
        eyesColorLabel.text = user.person.eyesColor
        careerLabel.text = user.person.career
    }
    
    override func viewDidLayoutSubviews() {
        avatarImageView.layer.cornerRadius = avatarImageView.frame.width / 2
    }
}
