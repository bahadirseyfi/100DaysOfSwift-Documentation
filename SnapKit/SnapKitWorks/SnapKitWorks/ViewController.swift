//
//  ViewController.swift
//  SnapKitWorks
//
//  Created by bahadir on 5.07.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boxUI()
    }
    
    private func boxUI() {
        let box = UIView()
        view.addSubview(box)
        box.backgroundColor = .blue
        box.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view).offset(20)
            make.left.equalTo(view).offset(20)
            make.bottom.equalTo(view).offset(-20)
            make.right.equalTo(view).offset(-20)
        }
    }
}
