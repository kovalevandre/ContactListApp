//
//  ContactDetailViewController.swift
//  ContactListApp
//
//  Created by Andrey Kovalev on 26.10.2023.
//

import UIKit

final class ContactDetailViewController: UITableViewController {
    var contact: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Contact Full Details"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "DetailCell")
    }
}

extension ContactDetailViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath)
        if indexPath.row == 0 {
            cell.textLabel?.text = "Email: \(contact.email)"
        } else {
            cell.textLabel?.text = "Phone number: \(contact.phone)"
        }
        return cell
    }
    
}
