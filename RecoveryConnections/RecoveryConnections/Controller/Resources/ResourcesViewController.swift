//
//  ResourcesViewController.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 3/8/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import UIKit
import SafariServices

class ResourcesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //==================================================
    // MARK: - Properties
    //==================================================

    let twelveStepsOrg = URL(string: "http://www.12step.org/")
    let alcoholicsAnonymous = URL(string: "https://www.aa.org/")
    let sexaholicsAnonymous = URL(string: "https://www.sa.org/")
    let ldsAddictionRecovery = URL(string: "https://addictionrecovery.lds.org/?lang=eng")
    let narcoticsAnonymous = URL(string: "https://www.na.org/")
    let additionalLinks = URL(string: "https://www.addictionsandrecovery.org/addiction-recovery-links.htm")
    
    
    
    //==================================================
    // MARK: - Functions
    //==================================================
    
    func goToWebsite(url: URL?) {
        guard let url = url else { return }
        let safariViewController = SFSafariViewController(url: url)
        present(safariViewController, animated: true)
    }
    
    //==================================================
    // MARK: - Actions
    //==================================================

    @IBAction func alcoholicsAnonButtonTapped(_ sender: Any) {
        goToWebsite(url: alcoholicsAnonymous)
    }
    
    @IBAction func narcoticsAnonButtonTapped(_ sender: Any) {
        goToWebsite(url: narcoticsAnonymous)
    }
    
    @IBAction func twelveStepsButtonTapped(_ sender: Any) {
        goToWebsite(url: twelveStepsOrg)
    }
    
    @IBAction func sexAddictsAnonButtonTapped(_ sender: Any) {
        goToWebsite(url: sexaholicsAnonymous)
    }
    
    @IBAction func faithRecoveryButtonTapped(_ sender: Any) {
        goToWebsite(url: ldsAddictionRecovery)
    }
    
    @IBAction func additionalResourcesButtonTapped(_ sender: Any) {
        goToWebsite(url: additionalLinks)
    }
    
    
    
    
}
