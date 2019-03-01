//
//  FollowUpTableViewCell.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 2/22/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import UIKit
import CoreData

class FollowUpTableViewCell: UITableViewCell {
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
    var commitment: Commitment?
    //Outlets
    @IBOutlet weak var reasonLabel: UILabel!
    @IBOutlet weak var motivationalImage: UIImageView!
    @IBOutlet weak var commitmentKeptControl: UISegmentedControl!
    @IBOutlet weak var difficultyOne: UIButton!
    @IBOutlet weak var difficultyTwo: UIButton!
    @IBOutlet weak var difficultyThree: UIButton!
    @IBOutlet weak var difficultyFour: UIButton!
    @IBOutlet weak var difficultyFive: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
