//
//  PartyTableTableViewController.swift
//  Didge
//
//  Created by Nicholas Loyd on 5/9/18.
//  Copyright © 2018 Nicholas Loyd. All rights reserved.
//

import UIKit

class PartyTableTableViewController: UITableViewController {

    var songsList : [Song] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songsList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "song", for: indexPath) as? PartyTableViewCell else {
            print("aaaa")
            fatalError("Could not dequeue cell")
        }
        cell.songTitle.text = songsList[indexPath.row].title
        cell.artistLabel.text = songsList[indexPath.row].artist
        return cell
        
    }
    @IBAction func LeaveEventButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "backToBeginning", sender: nil)
    }
    
    @IBAction func unwindFromSearch(sender: UIStoryboardSegue) {
        if let source = sender.source as? SearchTableViewController {
            //songsList.append(source.selectedSong[0])
            tableView.reloadData()
        }
    }
}
