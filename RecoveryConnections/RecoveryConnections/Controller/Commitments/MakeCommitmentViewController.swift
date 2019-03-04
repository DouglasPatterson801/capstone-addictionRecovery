//
//  MakeCommitmentViewController.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 2/22/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import UIKit
import CoreData

class MakeCommitmentViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
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
    @IBOutlet weak var setImageButton: RoundButton!
    
    //==================================================
    // MARK: - View LifeCycle
    //==================================================
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        updateSetImageButtonText()
    }
    //==================================================
    // MARK: - Functions
    //==================================================
    func updateSetImageButtonText() {
        if motivationalImage.image != UIImage(named: "noImageSelected"){
            setImageButton.setTitle("Change Image", for: .normal)
        }
    }
  
    func checkForUploadedImage() -> UIImage? {
        if motivationalImage.image == UIImage(named: "noImageSelected") {
            return nil
        } else {
            guard let unwrappedMotivationImage = motivationalImage.image else { return nil }
            return unwrappedMotivationImage
        }
    }
    
    //==================================================
    // MARK: - Actions
    //==================================================
    
    @IBAction func chooseImageButtonTapped(_ sender: Any) {
        CameraHandler.shared.showActionSheet(vc: self)
        CameraHandler.shared.imagePickedBlock = { (image) in
            self.motivationalImage.image = image
        }
        
    }
    
    
    @IBAction func commitButtonTapped(_ sender: Any) {
        guard let reason = reasonTextField.text,
            let unwrappedImage = checkForUploadedImage() else {
            print("could not safely unwrap either reasonTextField of motivationalImage")
        return
    }
        let motivationalImage = unwrappedImage.pngData() as NSData?
    let commitmentMade = true
    let currentDate = Date()
    if let commitment = commitment {
        commitment.currentDate = currentDate
        commitment.commitmentMade = commitmentMade
        ModelController.sharedController.saveToPersistentStorage()
    } else {
        ModelController.sharedController.createCommitment(reason: reason, commitmentMade: commitmentMade, commitmentKept: nil, difficulty: nil, currentDate: currentDate, notes: nil, motivationalImage: motivationalImage)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
}
