//
//  Person.swift
//  ContactListApp
//
//  Created by Кирилл Шалеников on 06.08.2023.
//

import Foundation


struct Person {

    static func getPersonsFullName(from name: String, and surname: String ) -> String {
        
        let dataSource = DataManager()
        
        var name: String = dataSource.names.randomElement()!
        var surname: String = dataSource.surnames.randomElement()!
        var telephoneNumber: String = dataSource.phoneNumbers.randomElement()!
        var email: String = dataSource.emails.randomElement()!
        
        let fullName = "\(name) \(surname))"
        
        return fullName
    }
    
}
