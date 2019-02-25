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
    let backGroundImageView = UIImageView()
    var startDate: StartDate? {
        didSet {
            guard let startDate = startDate,
            let sobrietyDate = startDate.sobrietyDate else {
                sobrietyCounterButton.setTitle("Set Sobriety Date", for: .normal)
                return }
            sobrietyCounterButton.setTitle("\(sobrietyDate)", for: .normal)
        }
    }
    let dailyQuote: Quote? = {
        QuoteController.sharedController.getDailyQuote()
    }()
    
    //Outlets:
    @IBOutlet weak var sobrietyCounterButton: RoundButton!
    @IBOutlet weak var dailyQuoteLabel: UILabel!
    
    
    //==================================================
    // MARK: - Actions
    //==================================================
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateDailyQuote()
        getBackGroundImage()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.backGroundImageView.frame = self.view.bounds
    }
    
    func getBackGroundImage() {
        let image = UIImage(named: "riverImage3")
        self.backGroundImageView.contentMode = .scaleAspectFill
        self.backGroundImageView.image = image
        self.view.addSubview(backGroundImageView)
        view.sendSubviewToBack(backGroundImageView)
    }
    func setSobrietyDate() {
        
    }
    func populateDailyQuote() {
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
