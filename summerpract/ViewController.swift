//
//  ViewController.swift
//  summerpract
//
//  Created by itisioslab on 09.07.2018.
//  Copyright © 2018 itisioslab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text="Ana"
        ageLabel.text="18"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int{
        return 1
    }
    func numberOfRows (in tableView:UITableView) -> Int{
        return 1
    }
    

    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var ageLabel: UILabel!
}

