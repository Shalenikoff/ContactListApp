//
//  Person.swift
//  ContactListApp
//
//  Created by Кирилл Шалеников on 06.08.2023.
//

import Foundation


struct Person {
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsList() -> [Person] {
        let dataSource = DataManager()
        var persons: [Person] = []
        
        for _ in 1...dataSource.emails.count {
            let person = Person(
                name: dataSource.names.randomElement()!,
                surname: dataSource.surnames.randomElement()!,
                phoneNumber: dataSource.phoneNumbers.randomElement()!,
                email: dataSource.emails.randomElement()!
                )
            persons.append(person)
        }
        return persons
    }
}
