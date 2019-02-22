//
//  FollowUpTableViewController.swift
//  RecoveryConnections
//
//  Created by Douglas Patterson on 2/22/19.
//  Copyright © 2019 Douglas Patterson. All rights reserved.
//

import UIKit

class FollowUpTableViewController: UITableViewController {
    
    //==================================================
    // MARK: - Properties
    //==================================================
    
    //Outlets
    @IBOutlet weak var reasonLabel: UILabel!
    @IBOutlet weak var motivationalImage: UIImageView!
    @IBOutlet weak var commitmentKeptControl: UISegmentedControl!
    @IBOutlet weak var difficultyOne: UIButton!
    @IBOutlet weak var difficultyTwo: UIButton!
    @IBOutlet weak var difficultyThree: UIButton!
    @IBOutlet weak var difficultyFour: UIButton!
    @IBOutlet weak var difficultyFive: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    //==================================================
    // MARK: - Actions
    //==================================================
    
    @IBAction func segmentedControlChanged(_ sender: Any) {
    }
    @IBAction func difficultyOneButtonTapped(_ sender: Any) {
    }
    @IBAction func difficultyTwoButtonTapped(_ sender: Any) {
    }
    @IBAction func difficultyThreeButtonTapped(_ sender: Any) {
    }
    @IBAction func difficultyFourButtonTapped(_ sender: Any) {
    }
    @IBAction func difficultyFiveButtonTapped(_ sender: Any) {
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
