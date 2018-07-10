//
//  ViewController.swift
//  Data Transfer
//
//  Created by Bizimana, Elie on 7/10/18.
//  Copyright © 2018 Bizimana, Elie. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, getData {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickMeFirstPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToSecond", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecond" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = firstTextField.text!
            secondVC.delegate = self
        }
    }
    
    func recieveData(input: String) {
        firstLabel.text = input
    }
    

}

