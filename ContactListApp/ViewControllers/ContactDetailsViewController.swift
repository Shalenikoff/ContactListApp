//
//  ContactDetailsViewController.swift
//  ContactListApp
//
//  Created by Кирилл Шалеников on 06.08.2023.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    // MARK: IB Outlets
    @IBOutlet var contactsPhoneLabel: UILabel!
    @IBOutlet var contactsEmailLabel: UILabel!
    
    // MARK: Public properties
    var contact: Person!
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        contactsPhoneLabel.text = contact.phoneNumber
        contactsEmailLabel.text = contact.email
        navigationItem.title = contact.fullname
    }
    
}
