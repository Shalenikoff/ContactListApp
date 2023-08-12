//
//  DataManager.swift
//  ContactListApp
//
//  Created by Кирилл Шалеников on 06.08.2023.
//

import UIKit

class DataManager {
    static let shared = DataManager()
    
    var names: [String] = [
    "Kirill",
    "Andrew",
    "Victor",
    "Alexey",
    "Nikita",
    "Evgeniy",
    "Vyacheslav",
    "Artem",
    ]
    
    var surnames: [String] = [
    "Shalenikov",
    "Ivanov",
    "Prohorov",
    "Sharov",
    "Ryabov",
    "Smirnov",
    "Petrov",
    "Sobolev"
    ]
    
    var phoneNumbers: [String] = [
    "+79472823040",
    "+79472594945",
    "+75584823040",
    "+79439459040",
    "+79450393455",
    "+79869402359",
    "+79478593024",
    "+79470692823",
    ]
    
    var emails: [String] = [
    "jsdgj@com",
    "sdckjn@com",
    "sdkvbj@com",
    "xcbmnr@com",
    "xmcnbdthg@com",
    "cvbndg@com",
    "xfbfsdfjhv@com",
    "sduygef@com"
    ]
    
    private init() {}
}
