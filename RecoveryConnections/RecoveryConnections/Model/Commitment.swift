//
//  Commitment.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 2/19/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import Foundation

extension Commitment {
    
    convenience init?(dictionary: Dictionary<String, Any>, context: NSManagedObjectContext = Stack.context) {
        guard let startDate = dictionary["startDate"] as? Date,
            let reason = dictionary["reason"] as? String,
            let commitmentMade = dictionary["commitmentMade"] as? Bool,
            let commitmentKept = dictionary["commitmentKept"] as? Bool,
            let difficulty = dictionary["difficulty"] as? Int16,
            let notes = dictionary["notes"] as? String else { return nil }
        
        self.init(context: context)

        self.startDate = startDate
        self.reason = reason
        self.commitmentMade = commitmentMade
        self.commitmentKept = commitmentKept
        self.difficulty = difficulty
        self.notes = notes
    }
}

