//
//  ViewController.swift
//  Didge
//
//  Created by Nicholas Loyd on 4/23/18.
//  Copyright © 2018 Nicholas Loyd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var username: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == createButton{
        segue.destination.navigationItem.title = username.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

