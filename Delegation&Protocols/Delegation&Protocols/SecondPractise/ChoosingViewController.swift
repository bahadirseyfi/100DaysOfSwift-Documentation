//
//  ChoosingViewController.swift
//  Delegation&Protocols
//
//  Created by bahadir on 9.02.2021.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, labelColor: UIColor, backgColor: UIColor)
}

class ChoosingViewController: UIViewController {

    var selectionDelegate: SideSelectionDelegate!
    
    @IBOutlet weak var gsBtnUI: UIButton!
    @IBOutlet weak var fbBtnUI: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        gsBtnUI.layer.cornerRadius = gsBtnUI.frame.size.height / 2
        fbBtnUI.layer.cornerRadius = fbBtnUI.frame.size.height / 2
    }
    
    @IBAction func gsButton(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(imageLiteralResourceName: "gs"), name: "GALATASARAY", labelColor: UIColor.red, backgColor: UIColor.yellow)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func fbButton(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(imageLiteralResourceName: "fener"), name: "FENERBAHÇE", labelColor: UIColor.blue, backgColor: UIColor.yellow)
        dismiss(animated: true, completion: nil)
    }
    
}
