//
//  MyTableViewController.swift
//  summerpract
//
//  Created by itisioslab on 09.07.2018.
//  Copyright © 2018 itisioslab. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    var arrayOfObjects = [User]()
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfObjects = [User(name: "Petya", number: 143251, group: "ITIS"),
                          User(name: "Ildar", number: 156552741511, group: "ITIS"),
                          User(name: "Alia", number: 561414156, group: "ITIS"),
                          User(name: "Anya", number: 1651463, group: "School")]
        
    }

    
    // MARK: - Table view data source

    @IBOutlet weak var navigBarItem: UINavigationItem!
    @IBAction func add(_ sender: Any) {
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfObjects.count
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if UserDefaults.standard.bool(forKey: "name") {
            //sortbyname
            arrayOfObjects.sort(by: { $0.name < $1.name })
            tableView.reloadData()
        }
        if UserDefaults.standard.bool(forKey: "number")
        {
            //sortbynumber
            arrayOfObjects.sort(by: { $0.number < $1.number })
            tableView.reloadData()
            
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! MyTableViewCell
        let model = arrayOfObjects[indexPath.row]
        cell.textLabel?.text=model.name
        cell.detailTextLabel?.text = model.group + ", " + String(model.number)
        cell.imageView?.image = #imageLiteral(resourceName: "contact")
        return cell
    }
    
    //MARK:Table View Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = arrayOfObjects[indexPath.row]
    performSegue(withIdentifier: "Detail", sender: model)
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Detail" {
            let destinationVC = segue.destination as! DetViewController
            destinationVC.user = sender as! User
        }
        
    }
    

}
