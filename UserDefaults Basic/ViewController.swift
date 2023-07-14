//
//  ViewController.swift
//  UserDefaults Basic
//
//  Created by Nikhil Saini on 17/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabexl: UILabel!
    
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let value = UserDefaults.standard.string(forKey: "username")
        if value != nil {
            myLabexl.text = "Hello, \(value!)"
        }
    }

    @IBAction func saveTapped(_ sender: Any) {
        
        myLabexl.text = "Hello, \(textField.text!)"
        
        UserDefaults.standard.set(textField.text!, forKey: "username")
        
        let alert = UIAlertController(title: "Saving", message: "Save Data in userdefaults Successfully", preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: {(action) in
            print("Save data")
        })
        
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
        textField.text = nil
        
    }
    
}

