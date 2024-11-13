//
//  ViewController.swift
//  appEventCount
//
//  Created by Dylan on 10/11/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var didFinishLaunch: UILabel!
    @IBOutlet weak var sceneDidEnterBackground: UILabel!
    @IBOutlet weak var sceneWillEnterForeground: UILabel!
    @IBOutlet weak var sceneWillResignActive: UILabel!
    @IBOutlet weak var sceneDidBecomeActive: UILabel!
    @IBOutlet weak var willConnectTo: UILabel!
    @IBOutlet weak var configurationForConnecting: UILabel!
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    var sceneDidEnterBackgroundCount = 0
    var sceneWillEnterForegroundCount = 0
    var sceneWillResignActiveCount = 0
    var sceneDidBecomeActiveCount = 0
    var willConnectToCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func updateView() {
        didFinishLaunch.text = "The App has launched \(appDelegate.launchcount) time(s)"
        configurationForConnecting.text = "The App configured \(appDelegate.configurationForConnectingCount) time(s)"
        sceneDidEnterBackground.text = " The App entered background \(sceneDidEnterBackgroundCount) time(s)"
        sceneWillEnterForeground.text = "The App has entered foreground \(sceneWillEnterForegroundCount) time(s)"
        sceneWillResignActive.text = "The App has resigned actived \(sceneWillResignActiveCount) time(s)"
        sceneDidBecomeActive.text = "The App has become active \(sceneDidBecomeActiveCount) time(s)"
        willConnectTo.text = "The app will connect \(willConnectToCount) time(s)"
    }

}

