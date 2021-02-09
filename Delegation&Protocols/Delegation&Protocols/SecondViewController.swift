//
//  SecondViewController.swift
//  Delegation&Protocols
//
//  Created by bahadir on 9.02.2021.
//

import UIKit

protocol veriyiAl {
    func veriAlindi(veri: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secTextField: UITextField!
    
    var data = ""
    var delegate: veriyiAl?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabel.text = data
    }
    

    @IBAction func veriGeriGonder(_ sender: UIButton) {
        delegate?.veriAlindi(veri: secTextField.text!)
        dismiss(animated: true, completion: nil)
    }
    
}
