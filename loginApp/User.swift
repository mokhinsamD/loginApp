//
//  User.swift
//  loginApp
//
//  Created by Дарина Самохина on 09.10.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getInformationAboutUser() -> User {
        User(
            login: "User",
            password: "1234",
            person: Person(
                name: "Draco",
                surname: "Malfoy",
                hairColor: "blond",
                eyesColor: "grey",
                career: "death eater",
                info: "Draco Lucius Malfoy is a fictional character in J. K. Rowling's Harry Potter series. He is a student in Harry Potter's year belonging in the Slytherin house. He is frequently accompanied by his two cronies, Vincent Crabbe and Gregory Goyle, who act as henchmen. Draco is characterised as a cowardly bully who tricks and hurts people to get what he wants; nevertheless, he is a cunning user of magic. He was played by Tom Felton in the Harry Potter film series."
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let hairColor: String
    let eyesColor: String
    let career: String
    let info: String
}
