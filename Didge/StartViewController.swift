//
//  StartViewController.swift
//  Didge
//
//  Created by Nicholas Loyd on 5/15/18.
//  Copyright © 2018 Nicholas Loyd. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backToBeginning(sender: UIStoryboardSegue) {
        if let source = sender.source as? SearchTableViewController {
            //songsList.append(source.selectedSong[0])
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
