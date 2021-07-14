//
//  ViewController.swift
//  UIView+NibWork
//
//  Created by bahadir on 25.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var pageView: UIView!
    let view1 = TestView.instanceFromNib()
    let view2 = TestView2.instanceFromNib()
    var selectedSegmentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl.selectedSegmentIndex = 0
        pageView.addSubview(view1)
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view1.leftAnchor.constraint(equalTo: pageView.leftAnchor),
            view1.rightAnchor.constraint(equalTo: pageView.rightAnchor),
            view1.bottomAnchor.constraint(equalTo: pageView.bottomAnchor),
            view1.topAnchor.constraint(equalTo: pageView.topAnchor)
        ])
    }

    @IBAction func segmentedValueChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            view2.removeFromSuperview()
            pageView.addSubview(view1)
            view1.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                view1.leftAnchor.constraint(equalTo: pageView.leftAnchor),
                view1.rightAnchor.constraint(equalTo: pageView.rightAnchor),
                view1.bottomAnchor.constraint(equalTo: pageView.bottomAnchor),
                view1.topAnchor.constraint(equalTo: pageView.topAnchor)
            ])
        default:
            pageView.addSubview(view2)
            view1.removeFromSuperview()
        }
        
        /*
        
        if sender.selectedSegmentIndex == 0 {
//            let view = (Bundle.main.loadNibNamed("TestView", owner: nil, options: nil)![0] as! UIView)
//            pageView.addSubview(view)
            
            let view = TestView.instanceFromNib()
            pageView.addSubview(view)
        } else {
            let view2 = (Bundle.main.loadNibNamed("TestView2", owner: nil, options: nil)![0] as! UIView)
            pageView.addSubview(view2)
        }
 */
    }
}

