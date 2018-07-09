//
//  DetViewController.swift
//  summerpract
//
//  Created by itisioslab on 09.07.2018.
//  Copyright © 2018 itisioslab. All rights reserved.
//

import UIKit

class DetViewController: UIViewController {
    
    @IBOutlet var Label: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var numBerLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Label?.text = user.name
        numBerLabel?.text = String(user.number)
        image.image = #imageLiteral(resourceName: "tree")
        
    }
    
    
}

