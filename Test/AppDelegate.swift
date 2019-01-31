//
//  AppDelegate.swift
//  Test
//
//  Created by Alex Mendes on 1/20/19.
//  Copyright © 2019 Alex Mendes. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        do {
            _ = try Realm()
        }catch {
            print("Error initialing new real, \(error)")
        }
        
        return true
    }

    
    
    
    
}

