//
//  SecondTableViewController.swift
//  ContactListApp
//
//  Created by Andrey Kovalev on 27.10.2023.
//

import UIKit

final class SecondTableViewController: UITableViewController {

    var contacts: [Person] = []

        override func viewDidLoad() {
            super.viewDidLoad()
            title = "Contact Details"
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "DetailCell")
        }
    }

extension SecondTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath)
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = "\(contact.firstName) \(contact.lastName)"
        cell.detailTextLabel?.text = "И-мейл: \(contact.email), Телефон: \(contact.phone)"
        
        return cell
    }
    
}

