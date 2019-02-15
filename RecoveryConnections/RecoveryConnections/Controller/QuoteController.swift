//
//  QuoteController.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 2/14/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import Foundation
import CoreData

class QuoteController {
    
    //==================================================
    // MARK: - Properties
    //==================================================
    
    static let sharedController = QuoteController()
    let formattedDate = DateFormatter()
    
    let currentDate = Date()
    var month = 0
    var day = 0
    
    
    
    
    //==================================================
    // MARK: - Actions
    //==================================================
    //OBTAIN MONTH AND DAY IN ORDER TO LOCATE QUOTE FROM 
    func initializeDate() {
        let calendar = Calendar.current
        month = calendar.component(.month, from: currentDate)
        day = calendar.component(.day, from: currentDate)
    }
    
    // RETRIEVE QUOTE FROM JSON FOR CURRENT DATE
    func getDailyQuote() {
        initializeDate()
        
        if let url = Bundle.main.url(forResource: "quotes", withExtension: "json") {
        let data = try? Data(contentsOf: url)
        }        
    }
}


