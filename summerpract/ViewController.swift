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
    func tableView(_ tableView:UITableView, numberOfRows section: Int) -> Int{
        return 10
    }
    func numberOfRows (in tableView:UITableView) -> Int{
        return 1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var ageLabel: UILabel!
}

