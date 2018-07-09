//
//  nevVc.swift
//  summerpract
//
//  Created by itisioslab on 09.07.2018.
//  Copyright © 2018 itisioslab. All rights reserved.
//

import UIKit

class nevVc: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    
    @IBAction func signInButton(_ sender: Any) {
        let loginValue = loginTF.text
        let passwordValue = Int(passwordTF.text!)
        checkPassword(with: loginValue!, and: passwordValue!)
    }
    
    @IBOutlet weak var signInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkPassword(with loginName :String, and passwordValue: Int) {
        
        if ((passwordValue==1) || (passwordValue==123)) && !(loginName==""){
            performSegue(withIdentifier: "auth", sender: nil)
        }
        else {
            print("wrong password")
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
