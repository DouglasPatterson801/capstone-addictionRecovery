//
//  CommitmentController.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 2/20/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import Foundation
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
    
    func deleteQuote(commitment: Commitment) {
        Stack.context.delete(commitment)
        saveToPersistentStorage()
    }
    
    func saveToPersistentStorage() {
        
        do {
            try Stack.context.save()
        } catch {
            print("Error. Could not save to persistent storage.")
        }
    }
}
