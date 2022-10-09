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
                name: "Darina",
                surname: "Samokhina",
                telegram: "sammas",
                hairColor: "brown",
                eyesColor: "blue",
                career: "shinigami"
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let telegram: String
    let hairColor: String
    let eyesColor: String
    let career: String
}
