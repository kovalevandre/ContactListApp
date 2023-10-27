//
//  DataStore.swift
//  ContactListApp
//
//  Created by Andrey Kovalev on 26.10.2023.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    private var firstNames = [String]()
    private var lastNames = [String]()
    private var emails = [String]()
    private var phones = [String]()
    
    private init() {
        generateRandomData()
    }
    
    private func generateRandomData() {

        firstNames = ["John", "Jane", "Alice", "Bob", "Eve", "Charlie", "Justin", "Kevin", "Matteo", "Kolt"]
        lastNames = ["Doe", "Smith", "Johnson", "Brown", "Wilson", "Ashwell", "D'Hoe", "Darlison", "Kingsmell", "Kembel"]
        emails = ["john@example.com", "jane@example.com", "alice@example.com", "bob@example.com", "eve@example.com", "charlie@example.com", "justin@example.com", "kevin@example.com", "kolt@example.com", "matteo@example.com"]
        phones = ["555-1234", "555-5678", "555-7890", "555-4321", "555-8765", "555-6305", "555-7803", "555-2310", "555-2601", "555-2101"]
    }
    
    func getRandomPerson() -> Person {
        let randomIndex = Int.random(in: 0..<firstNames.count)
        return Person(firstName: firstNames[randomIndex], lastName: lastNames[randomIndex], email: emails[randomIndex], phone: phones[randomIndex])
    }
}

