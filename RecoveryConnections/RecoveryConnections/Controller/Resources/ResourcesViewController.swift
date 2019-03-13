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

    @IBAction func twelveStepsButtonTapped(_ sender: Any) {
        goToWebsite(url: twelveStepsOrg)
    }
    
    
}
