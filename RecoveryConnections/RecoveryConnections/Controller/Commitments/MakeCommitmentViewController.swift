//
//  MakeCommitmentViewController.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 2/22/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import UIKit
import CoreData

class MakeCommitmentViewController: UIViewController {
    //==================================================
    // MARK: - Properties
    //==================================================
    let commitmentMade = false
    var difficultyRating: Int16? = 0

    var commitmentArray: [Commitment] {
        let request: NSFetchRequest<Commitment> = Commitment.fetchRequest()
        do {
            return try Stack.context.fetch(request)
        } catch {
            return []
        }
    }
    var commitment: Commitment? {
        didSet {
            guard let commitment = commitment else { return }
            let currentDate = Date()
            let reason = reasonTextField.text
            let commitmentMade = self.commitmentMade
            let commitmentKept: Bool? = nil
            let difficulty = difficultyRating
            let notes: String? = nil
        }
    }
    
    //Outlets
    @IBOutlet weak var reasonTextField: UITextField!
    @IBOutlet weak var motivationalImage: UIImageView!
    @IBOutlet weak var commitButton: RoundButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //==================================================
    // MARK: - Actions
    //==================================================
    @IBAction func commitButtonTapped(_ sender: Any) {
        guard let reason = reasonTextField.text else {print("return")
                return }
        let commitmentMade = true
        let currentDate = Date()
        
        if let commitment = commitment {
            commitment.currentDate = currentDate
            commitment.commitmentMade = commitmentMade
            
            
            CommitmentController.sharedController.saveToPersistentStorage()
        } else {
            CommitmentController.sharedController.createCommitent(reason: reason, commitmentMade: commitmentMade, commitmentKept: nil, difficulty: nil, currentDate: currentDate, notes: nil)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func testButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
