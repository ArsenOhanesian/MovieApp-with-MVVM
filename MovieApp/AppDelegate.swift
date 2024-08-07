//
//  AppDelegate.swift
//  MovieApp
//
//  Created by csd_setup on 07.08.2024.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        let navController = UINavigationController(rootViewController: MainViewController())
        window.rootViewController = navController
        window.makeKeyAndVisible()
        
        self.window = window
        return true
    }


}

