//
//  SettingsViewController.swift
//  summerpract
//
//  Created by itisioslab on 10.07.2018.
//  Copyright © 2018 itisioslab. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var firstSwitch: UISwitch!
    @IBOutlet weak var secondSwitch: UISwitch!
    @IBOutlet weak var thirdSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstSwitch.isOn = UserDefaults.standard.bool(forKey: "firstSwitch")
        secondSwitch.isOn = UserDefaults.standard.bool(forKey: "secSwitch")
        
    }
    
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func firstSwitchAct(_ sender: UISwitch) {
        
        UserDefaults.standard.set(sender.isOn, forKey: "firstSwitch")
        
    }
    
    @IBAction func secSwitchAct(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "secSwitch")
    }
    
    @IBAction func thirdSwitchAct(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "thirSwitch")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        firstSwitch.setOn(UserDefaults.standard.bool(forKey: "firstSwitch"), animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
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
