//
//  MyTableViewCell.swift
//  summerpract
//
//  Created by itisioslab on 10.07.2018.
//  Copyright © 2018 itisioslab. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code жизненный цикл ячейки
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state  when pressing
    }
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var labelCell: UILabel!
    
}
