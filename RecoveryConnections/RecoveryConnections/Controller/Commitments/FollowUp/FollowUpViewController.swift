//
//  FollowUpViewController.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 3/6/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import UIKit

class FollowUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        motivationalImage.image = setImage()
        reasonLabel.text = setReasonLabelText()
    }
    
    //==================================================
    // MARK: - Properties
    //==================================================

    var commitment: Commitment?
        
    
    
    var difficulty: Int16 = 0
    //    var followUpTableViewController = FollowUpTableViewController()
    //Outlets
    
    @IBOutlet weak var reasonLabel: UILabel!
    @IBOutlet weak var motivationalImage: UIImageView!
    @IBOutlet weak var commitmentKeptControl: UISegmentedControl!
    @IBOutlet weak var difficultyOneButton: UIButton!
    @IBOutlet weak var difficultyTwoButton: UIButton!
    @IBOutlet weak var difficultyThreeButton: UIButton!
    @IBOutlet weak var difficultyFourButton: UIButton!
    @IBOutlet weak var difficultyFiveButton: UIButton!
    @IBOutlet weak var difficultyLabel: UILabel!
    @IBOutlet weak var notesTextView: UITextView!
    
    //==================================================
    // MARK: - Functions
    //==================================================
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//    }
    
    func setDifficulty() -> Int16? {
        return difficulty
    }
    
    func setReasonLabelText() -> String? {
        guard let reason = commitment?.reason else {
            return "Today I have commited to stay sober!" }
        return  "I have commited to stay sober because \(reason)"
    }
    
    func setImage() -> UIImage? {
        guard let unwrappedImageDate = commitment?.motivationalImage,
            let image = UIImage(data: unwrappedImageDate) else { return nil }
        return image
    }
    
    func checkForNotes() -> String? {
        if notesTextView.text != "Notes" && notesTextView.text != "" {
            return notesTextView.text
        } else {
            return nil
        }
    }
    
    //Update to pass to CommitmentListTableViewController
    func update(with commitment: Commitment) {
        self.commitment = commitment
        reasonLabel.text = setReasonLabelText()
        motivationalImage.image = setImage()
    }
    
    
    //==================================================
    // MARK: - Actions
    //==================================================
    
    @IBAction func difficultyOneButtonTapped(_ sender: Any) {
        difficultyLabel.text = "Great!"
        difficulty = 1
        difficultyOneButton.alpha = 1.0
        difficultyTwoButton.alpha = 0.2
        difficultyThreeButton.alpha = 0.2
        difficultyFourButton.alpha = 0.2
        difficultyFiveButton.alpha = 0.2
    }
    @IBAction func difficultyTwoButtonTapped(_ sender: Any) {
        difficultyLabel.text = "Good!"
        difficulty = 2
        difficultyOneButton.alpha = 0.2
        difficultyTwoButton.alpha = 1.0
        difficultyThreeButton.alpha = 0.2
        difficultyFourButton.alpha = 0.2
        difficultyFiveButton.alpha = 0.2
    }
    @IBAction func difficultyThreeButtonTapped(_ sender: Any) {
        difficultyLabel.text = "Ok"
        difficulty = 3
        difficultyOneButton.alpha = 0.2
        difficultyTwoButton.alpha = 0.2
        difficultyThreeButton.alpha = 1.0
        difficultyFourButton.alpha = 0.2
        difficultyFiveButton.alpha = 0.2
    }
    @IBAction func difficultyFourButtonTapped(_ sender: Any) {
        difficultyLabel.text = "That was tough."
        difficulty = 4
        difficultyOneButton.alpha = 0.2
        difficultyTwoButton.alpha = 0.2
        difficultyThreeButton.alpha = 0.2
        difficultyFourButton.alpha = 1.0
        difficultyFiveButton.alpha = 0.2
    }
    @IBAction func difficultyFiveButtonTapped(_ sender: Any) {
        difficultyLabel.text = "Near impossible.."
        difficulty = 5
        difficultyOneButton.alpha = 0.2
        difficultyTwoButton.alpha = 0.2
        difficultyThreeButton.alpha = 0.2
        difficultyFourButton.alpha = 0.2
        difficultyFiveButton.alpha = 1.0
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let commitment = commitment,
            let difficulty = setDifficulty() else { return }
        commitment.difficulty = difficulty
        commitment.notes = checkForNotes()
        ModelController.sharedController.saveToPersistentStorage()
    }
    
    
    

}
