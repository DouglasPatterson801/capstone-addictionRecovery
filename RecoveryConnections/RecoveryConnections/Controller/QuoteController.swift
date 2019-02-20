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
    //OBTAIN MONTH AND DAY IN ORDER TO LOCATE QUOTE FROM JSON
    func initializeDate() {
        let calendar = Calendar.current
        month = calendar.component(.month, from: currentDate)
        day = calendar.component(.day, from: currentDate)
    }
    
    // RETRIEVE QUOTE FROM JSON FOR CURRENT DATE
    func getDailyQuote() -> Quote? {
        initializeDate()

        guard let url = Bundle.main.url(forResource: "Quotes", withExtension: "json"),
            let data = try? Data(contentsOf: url) else {
                print("Unable to obtain data from url")
                return nil }
        let jsonObjects = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)
        if let quotesDictionary = jsonObjects as? [Dictionary<String, String>],
            let firstDictionary = quotesDictionary.first,
            let quote = firstDictionary["\(month)-\(day)"] {
            print(quote)
            let quoteObject = Quote(quoteText: quote)
            return quoteObject
        } else {
            print("Unable to return quote text")
            return nil
        }
        
        
    }
}


