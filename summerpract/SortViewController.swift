//
//  SortViewController.swift
//  summerpract
//
//  Created by itisioslab on 10.07.2018.
//  Copyright © 2018 itisioslab. All rights reserved.
//

import UIKit

class SortViewController: UIViewController {

    @IBOutlet weak var sortByNameSwitch: UISwitch!
    @IBOutlet weak var sortByNumberSwitch: UISwitch!
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func sortByNameSwitch(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "name")
        UserDefaults.standard.removeObject(forKey: "number")
        sortByNumberSwitch.setOn(false, animated: true)
    }
    @IBAction func sortByNumberSwitch(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "number")
        UserDefaults.standard.removeObject(forKey: "name")
        sortByNameSwitch.setOn(false, animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        sortByNameSwitch.setOn(UserDefaults.standard.bool(forKey: "name"), animated: true)
        sortByNumberSwitch.setOn(UserDefaults.standard.bool(forKey: "number"), animated: true)
    }
            
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
