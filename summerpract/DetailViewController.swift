//
//  DetailViewController.swift
//  summerpract
//
//  Created by itisioslab on 09.07.2018.
//  Copyright © 2018 itisioslab. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {
    
    @IBOutlet var Label: UILabel!
    var text: String!
    var image : UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Label?.text = text
        let sUser = User(name: "", number: 0, group:"itisioslab")
    }
}
