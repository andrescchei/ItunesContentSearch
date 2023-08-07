//
//  AppDelegate.swift
//  keySocDemo
//
//  Created by Andres Chan on 3/8/2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let mainStoryboardIpad : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let initialViewControlleripad : UIViewController = mainStoryboardIpad.instantiateViewController(withIdentifier: "ViewController") as UIViewController
                 self.window = UIWindow(frame: UIScreen.main.bounds)
                 self.window?.rootViewController = initialViewControlleripad
                 self.window?.makeKeyAndVisible()
        return true
    }

}

