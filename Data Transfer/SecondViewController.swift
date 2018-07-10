//
//  SecondViewController.swift
//  Data Transfer
//
//  Created by Bizimana, Elie on 7/10/18.
//  Copyright © 2018 Bizimana, Elie. All rights reserved.
//

import UIKit

protocol getData {
    func recieveData(input: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondTextField: UITextField!
    
    var data = " "
    var delegate: getData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondLabel.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickMeSecond(_ sender: Any) {
        delegate?.recieveData(input: secondTextField.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
