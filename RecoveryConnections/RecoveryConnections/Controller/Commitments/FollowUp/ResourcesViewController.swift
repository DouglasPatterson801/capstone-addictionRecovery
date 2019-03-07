//
//  ResourcesViewController.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 3/7/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import UIKit
import SafariServices

class ResourcesViewController: UIViewController {
    
    //==================================================
    // MARK: - Properties
    //==================================================

    //URLs
    var twelveSteps = "http://www.12step.org/"
    var alcoholicsAnon = "https://www.aa.org/pages/en_US"
    var sexaholicsAnon = "https://www.sa.org/"
    var gamglingAnon = "http://www.gamblersanonymous.org/ga/"
    var ldsAddictionRecovery = "https://addictionrecovery.lds.org/?lang=eng"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func goToExternalSite(url: String) {
        guard let url = URL(string: url) else { return }
        let configuration = SFSafariViewController.Configuration()
        configuration.entersReaderIfAvailable = true
        
        let safariViewController = SFSafariViewController(url: url)
        present(safariViewController, animated: true)
    }
    @IBAction func alcoholicsAnonymousButtonTapped(_ sender: Any) {
        goToExternalSite(url: twelveSteps)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
