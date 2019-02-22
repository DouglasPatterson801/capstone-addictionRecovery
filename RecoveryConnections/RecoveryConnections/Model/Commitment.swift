//
//  Commitment.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 2/19/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import Foundation
import CoreData

extension Commitment {
    
    convenience init?(startDate: Date, reason: String, commitmentMade: Bool, commitmentKept: Bool, diffictuly: Int16, notes: String,context: NSManagedObjectContext = Stack.context) {
      
        self.init(context: context)

        self.startDate = startDate
        self.reason = reason
        self.commitmentMade = commitmentMade
        self.commitmentKept = commitmentKept
        self.difficulty = diffictuly
        self.notes = notes
    }
}

