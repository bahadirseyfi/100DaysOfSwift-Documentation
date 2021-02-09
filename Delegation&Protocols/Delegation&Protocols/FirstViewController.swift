//
//  FirstViewController.swift
//  Delegation&Protocols
//
//  Created by bahadir on 9.02.2021.
//

import UIKit

class FirstViewController: UIViewController, veriyiAl {
    
    func veriAlindi(veri: String) {
        firstLabel.text = veri
    }
    

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var firstLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func veriGonder(_ sender: UIButton) {
        performSegue(withIdentifier: "toNextVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNextVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textField.text!
            secondVC.delegate = self
        }
    }
}

