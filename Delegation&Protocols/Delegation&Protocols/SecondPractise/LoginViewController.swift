//
//  LoginViewController.swift
//  Delegation&Protocols
//
//  Created by bahadir on 9.02.2021.
//

import UIKit

class LoginViewController: UIViewController, SideSelectionDelegate {
    
    func didTapChoice(image: UIImage, name: String, labelColor: UIColor, backgColor: UIColor) {
        mainImageView.image = image
        nameLabel.text = name
        nameLabel.textColor = labelColor
        nameLabel.backgroundColor = backgColor
    }
    

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chooseButton.layer.cornerRadius = chooseButton.frame.size.height / 2
        
    }
    

    @IBAction func chooseButtonTapped(_ sender: UIButton) {
    
        let selectionVC = storyboard?.instantiateViewController(identifier: "ChoosingViewController") as! ChoosingViewController
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
        
    }
    
}
