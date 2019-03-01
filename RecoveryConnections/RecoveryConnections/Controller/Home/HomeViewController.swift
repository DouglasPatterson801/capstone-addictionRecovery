//
//  HomeViewController.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 2/15/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import UIKit
import CoreData

class HomeViewController: UIViewController {
    
    //==================================================
    // MARK: - Properties
    //==================================================
    let backGroundImageView = UIImageView()
    let dailyQuote: Quote? = {
        QuoteController.sharedController.getDailyQuote()
    }()
    
    //Outlets:
    @IBOutlet weak var sobrietyCounterButton: RoundButton!
    @IBOutlet weak var dailyQuoteLabel: UILabel!
    
    //==================================================
    // MARK: - View Lifecycle
    //==================================================
    override func viewDidLoad() {
        super.viewDidLoad()
        populateDailyQuote()
        getBackGroundImage()
    }
    override func viewWillAppear(_ animated: Bool) {
               setSobrietyCounter()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.backGroundImageView.frame = self.view.bounds
    }
    
    //==================================================
    // MARK: - Functions
    //==================================================
    func getBackGroundImage() {
        let image = UIImage(named: "riverImage3")
        self.backGroundImageView.contentMode = .scaleAspectFill
        self.backGroundImageView.image = image
        self.view.addSubview(backGroundImageView)
        view.sendSubviewToBack(backGroundImageView)
    }
    func setSobrietyCounter() {
        if SobrietyCounterController.sharedController.startDateArray == [] {
            sobrietyCounterButton.setTitle("Tap to set sobriety date", for: .normal)
        } else {
            let daysSober =  SobrietyCounterController.sharedController.getNumberOfDaysSober() //else { return }
            sobrietyCounterButton.setTitle("\(daysSober)", for: .normal)
        }
    }
    func populateDailyQuote() {
        if let quote = dailyQuote {
            dailyQuoteLabel.text = "\(quote.quoteText)"
        }
    }
    
    //==================================================
    // MARK: - Actions
    //==================================================
    @IBAction func sobrietyCounterButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "setDateSegue", sender: Any?.self)
    }
    
    //==================================================
    // MARK: - Navigation
    //==================================================
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "setDateSegue" {
            var sobrietyDateViewController = segue.destination as! SobrietyDateViewController
        }
    }
}
