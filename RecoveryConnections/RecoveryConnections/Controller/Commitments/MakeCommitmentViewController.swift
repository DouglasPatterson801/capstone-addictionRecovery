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
            let startDate = Date()
            let 
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
