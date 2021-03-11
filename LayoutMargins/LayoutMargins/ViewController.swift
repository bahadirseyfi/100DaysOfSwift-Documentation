//
//  ViewController.swift
//  LayoutMargins
//
//  Created by bahadir on 9.03.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemGreen
        setupViews()
    }
    func setupViews(){
        //Create Controls
        let leadingGuide = UILayoutGuide()
        let okButton = makeButton(title: "OK", color: UIColor.cyan)
        let middleGuide = UILayoutGuide()
        let cancelButton = makeButton(title: "Cancel", color: UIColor.purple)
        let trailingGuide = UILayoutGuide()
        
        // Add to subview & layout guide
        view.addSubview(okButton)
        view.addSubview(cancelButton)
        view.addLayoutGuide(leadingGuide)
        view.addLayoutGuide(middleGuide)
        view.addLayoutGuide(trailingGuide)
        
        // setup constraints
        let margins = view.layoutMarginsGuide
        
        // Leading Guide
        margins.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor).isActive = true
        leadingGuide.trailingAnchor.constraint(equalTo: okButton.leadingAnchor).isActive = true
        
        // Middle Guide
        okButton.trailingAnchor.constraint(equalTo: middleGuide.leadingAnchor)
    }
    
    func makeButton(title: String, color: UIColor) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.contentEdgeInsets = UIEdgeInsets.init(top: 8, left: 16, bottom: 8, right: 16)
        button.backgroundColor = color
        
        return button
    }

}

