//
//  SobrietyCounterController.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 2/25/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import Foundation
import CoreData

class SobrietyCounterController {
    //==================================================
    // MARK: - Properties
    //==================================================
    static let sharedController = SobrietyCounterController()
    let dateFormatter = DateFormatter()
    var startDate: StartDate?
    let currentDate = Date()
    var calendar = Calendar.current
    
    
    
    var startDateArray: [StartDate] {
        let request: NSFetchRequest<StartDate> = StartDate.fetchRequest()
        do {
            return try Stack.context.fetch(request)
        } catch {
            return []
        }
    }

//    func daysSober(from: Date) -> Int? {
//        guard let sobrietyDate = startDate?.sobrietyDate else { return nil }
//        let daysSober = Calendar.current.dateComponents([.day], from: sobrietyDate, to: currentDate).day ?? 0
//        return daysSober
//    }
    
    func getNumberOfDaysSober() {
        guard let sobrietyDate = startDate?.sobrietyDate else { return }
        let differenceInDays = Calendar.current.dateComponents([.day], from: sobrietyDate, to: currentDate)
        dateFormatter.string(from: differenceInDays)

    }
}



