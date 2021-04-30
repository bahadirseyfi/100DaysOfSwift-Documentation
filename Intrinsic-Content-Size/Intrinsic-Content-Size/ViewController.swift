//
//  ViewController.swift
//  Intrinsic-Content-Size
//
//  Created by bahadir on 17.03.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        setupViews()
    }
    
    func setupViews(){
        let label1 = makeLabel(with: "Bahadir")
        let textField1 = makeTextField(withPlaceHolderText: "Enter Name Here...")
        
        view.addSubview(label1)
        view.addSubview(textField1)
        
        label1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
    
        textField1.leadingAnchor.constraint(equalTo: label1.trailingAnchor, constant: 8).isActive = true
        textField1.firstBaselineAnchor.constraint(equalTo: label1.firstBaselineAnchor).isActive = true
        textField1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        label1.setContentHuggingPriority(UILayoutPriority(251), for: .horizontal)
    }
    
    func makeLabel(with text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont.systemFont(ofSize: 16)
        label.backgroundColor = .green
        
        return label
    }
    
    func makeTextField(withPlaceHolderText text: String) -> UITextField {
            let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = text
        textField.backgroundColor = .systemPurple
        
        return textField
    }

}

