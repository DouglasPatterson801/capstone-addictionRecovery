//
//  CommitmentController.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 2/20/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import CoreData
import UIKit

class CommitmentController {
    
    //==================================================
    // MARK: - Properties
    //==================================================
    
    static let sharedController = CommitmentController()
    var commitmentArray: [Commitment] {
        let request: NSFetchRequest<Commitment> = Commitment.fetchRequest()
        do {
            return try Stack.context.fetch(request)
        } catch {
            return []
        }
    }
    
    //==================================================
    // MARK: - Actions
    //==================================================
    
    func createCommitent(startDate: Date, reason: String?, commitmentMade: Bool, commitmentKept: Bool?, difficulty: Int16, notes: String?) {
        guard let reason = reason,
            let commitmentKept = commitmentKept,
            let notes = notes else { return }
        let _ = Commitment(startDate: startDate, reason: reason, commitmentMade: commitmentMade, commitmentKept: commitmentKept, diffictuly: difficulty, notes: notes)
        saveToPersistentStorage()
    }
    func deleteQuote(commitment: Commitment) {
        Stack.context.delete(commitment)
        saveToPersistentStorage()
    }
    func saveToPersistentStorage() {
        do {
            try Stack.context.save()
        } catch {
            print("Error. Could not Commitment to CoreData.")
        }
    }
}
