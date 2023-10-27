//
//  ContactListViewController.swift
//  ContactListApp
//
//  Created by Andrey Kovalev on 26.10.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    var contacts = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Contacts"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ContactCell")
        generateRandomContacts()
    }
    
    func generateRandomContacts() {
        for _ in 1...30 {
            let contact = DataStore.shared.getRandomPerson()
            contacts.append(contact)
        }
    }
    
}

extension ContactListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = "\(contact.firstName) \(contact.lastName)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = ContactDetailViewController()
        detailViewController.contact = contacts[indexPath.row]
        navigationController?.pushViewController(detailViewController, animated: true)
        
    }
}


