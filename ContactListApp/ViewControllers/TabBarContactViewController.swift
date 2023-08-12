//
//  TabBarContactViewController.swift
//  ContactListApp
//
//  Created by Кирилл Шалеников on 12.08.2023.
//

import UIKit

class TabBarContactViewController: UITabBarController {
 
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        giveInfoToViewControllers()
    }
    
    // MARK: Private methods
    private func giveInfoToViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListTableViewController else { return }
        guard let sectionContactsVC = viewControllers?.last as? SectionsContactTableViewController else { return }
        
        let persons = Person.getPersonsList()
        contactListVC.persons = persons
        sectionContactsVC.persons = persons
    }
}
