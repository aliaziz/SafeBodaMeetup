//
//  AppDelegate.swift
//  MeetupDemo
//
//  Created by ali ziwa on 11/03/2019.
//  Copyright © 2019 ali ziwa. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        guard NSClassFromString("XCTest") == nil else {
            DependencyInjection.shared.registerAppDependencies()
            return true
        }
        
        DependencyInjection.shared.registerAppDependencies()
        return true
    }
}
