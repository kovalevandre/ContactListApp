//
//  TabBarController.swift
//  ContactListApp
//
//  Created by Andrey Kovalev on 26.10.2023.
//

import UIKit

@main
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let contactListViewController = ContactListViewController()
        let secondTableViewController = SecondTableViewController()

        let contactsNavigationController = UINavigationController(rootViewController: contactListViewController)
        let secondTableNavigationController = UINavigationController(rootViewController: secondTableViewController)

        contactsNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        secondTableNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)

        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [contactsNavigationController, secondTableNavigationController]

        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }
}
