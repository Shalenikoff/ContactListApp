//
//  Person.swift
//  ContactListApp
//
//  Created by Кирилл Шалеников on 06.08.2023.
//

import Foundation


struct Person {
    static var dataSource = DataManager()
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsList() -> [Person] {
        var persons: [Person] = []
        
        for _ in persons {
            let person = Person(
                name: Person.getPersonsName(),
                surname: Person.getPersonsSurname(),
                phoneNumber: Person.getPersonsNumber(),
                email: Person.getPersonsEmail()
                )
            persons.append(person)
        }
        return persons
    }
}

extension Person {
    static func getPersonsName() -> String {
        let names = dataSource.names.randomElement()!
        return names
    }
    
    static func getPersonsSurname() -> String {
        let surnames = dataSource.surnames.randomElement()!
        return surnames
    }
    
    static func getPersonsNumber() -> String {
        var phoneNumber: String = dataSource.phoneNumbers.randomElement()!
        return phoneNumber
    }
    
    static func getPersonsEmail() -> String {
        var email: String = dataSource.emails.randomElement()!
        return email
    }
}
