//
//  SearchTableViewController.swift
//  Didge
//
//  Created by Nicholas Loyd on 5/10/18.
//  Copyright © 2018 Nicholas Loyd. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController {

    var songs : [Song] = [Song("Sk8er Boi", by: "Avril Lavigne"), Song("Cry Me A River", by: "Justin Timberlake"), Song("Can't Get You Out Of My Head", by: "Kylie Minogue"), Song("...Baby One More Time", by: "Britney Spears"), Song("Lemon", by: "N.E.R.D. ft. Rihanna"), Song("Cheerleader", by: "OMI"), Song("Cherry Cola", by: "Eagles of Death Metal"), Song("Welcome to the Black Parade", by: "My Chemical Romance"), Song("The Weekend", by: "SZA"), Song("The Hills", by: "The Weeknd")]
    
    var selectedSong: [Song] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "searchSong", for: indexPath) as? SearchTableViewCell else {
            print("aaaa")
            fatalError("Could not dequeue cell")
        }
        cell.songTitle.text = songs[indexPath.row].title
        cell.artistLabel.text = songs[indexPath.row].artist
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedIndexPath = tableView.indexPathForSelectedRow else {return}
        if segue.identifier == "backToParty" {
            self.selectedSong.append(songs[selectedIndexPath.row])
            let partyViewController = segue.destination as? PartyTableTableViewController
            //print(partyViewController?.songsList.count)
            if !(partyViewController?.songsList.contains(selectedSong[0]))!{
                partyViewController?.songsList += selectedSong
            }
            //print(partyViewController?.songsList.count)
        }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
