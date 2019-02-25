//
//  SobrietyCounterController.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 2/25/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import Foundation
import CoreData

class SobrietyCounter {
    static let sharedController = SobrietyCounter()
    let formattedDate = DateFormatter()
    let currentDate = Date()
    
    var startDates: [StartDate] {
        let request: NSFetchRequest<StartDate> = StartDate.fetchRequest()
        do {
            return try Stack.context.fetch(request)
        } catch {
            return []
        }
    }
    
    
    func getNumberOfDaysSober() -> DateComponents? {
        
        //if core data has date, calculate difference in days
        // - Fetch date from CoreData
        // - do -> if date exists, find difference in days
        // - catch -> print error/whatever
        guard let startDate = startDates.first,
            let sobrietyDate =  startDate.sobrietyDate else { return nil }
            let differenceInDays = Calendar.current.dateComponents([.day], from: sobrietyDate, to: currentDate)
        return differenceInDays
        
    }
}
