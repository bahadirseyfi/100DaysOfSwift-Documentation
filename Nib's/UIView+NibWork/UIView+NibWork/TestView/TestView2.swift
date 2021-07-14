//
//  TestView2.swift
//  UIView+NibWork
//
//  Created by bahadir on 25.06.2021.
//

import UIKit

class TestView2: UIView {
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "TestView2", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
        }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        // stuff here
        backgroundColor = .red
    }
}
