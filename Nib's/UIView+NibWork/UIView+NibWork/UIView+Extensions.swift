//
//  UIView+Extensions.swift
//  UIView+NibWork
//
//  Created by bahadir on 25.06.2021.
//

import UIKit

protocol CustomViewProtocol {

    /// The content of the UIView
    var contentView: UIView { get }

    /// Attach a custom `Nib` to the view's content
    /// - Parameter customViewName: the name of the `Nib` to attachs
    func commonInit(for customViewName: String)
}

extension CustomViewProtocol where Self: UIView {

    func commonInit(for customViewName: String) {
        Bundle.main.loadNibNamed(customViewName, owner: self, options: nil)
        addSubview(contentView)
        contentView.backgroundColor = .clear
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.translatesAutoresizingMaskIntoConstraints = false
    }

}
