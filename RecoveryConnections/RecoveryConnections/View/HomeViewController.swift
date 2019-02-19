//
//  HomeViewController.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 2/15/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    //==================================================
    // MARK: - Properties
    //==================================================
    
    let dailyQuote: Quote? = {
        
        QuoteController.sharedController.getDailyQuote()
    }()
    
    //Outlets:
    @IBOutlet weak var dailyQuoteLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if let quote = dailyQuote {
        dailyQuoteLabel.text = "\(quote.quoteText)"
        }
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
