//
//  ViewController.swift
//  ReadableContent Guides
//
//  Created by bahadir on 17.03.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        setupViews()
    }
    
    func setupViews(){
        /*
        let redView = UIView()
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = .red
        */
        
        let label = makeLabel(withText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Volutpat diam ut venenatis tellus in. Duis ultricies lacus sed turpis. Amet commodo nulla facilisi nullam vehicula. Quis commodo odio aenean sed adipiscing diam donec adipiscing tristique. Semper auctor neque vitae tempus quam pellentesque nec. At in tellus integer feugiat scelerisque varius morbi enim. Sodales ut etiam sit amet nisl purus. Auctor urna nunc id cursus. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Facilisi etiam dignissim diam quis enim. Eget arcu dictum varius duis at consectetur lorem donec. Egestas pretium aenean pharetra magna ac. Ultrices eros in cursus turpis massa tincidunt. Cursus turpis massa tincidunt dui ut ornare lectus sit. Elementum curabitur vitae nunc sed velit dignissim sodales ut. Auctor eu augue ut lectus arcu bibendum at varius vel. Quam id leo in vitae. Eleifend donec pretium vulputate sapien nec sagittis. Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Pellentesque habitant morbi tristique senectus et netus. Maecenas accumsan lacus vel facilisis volutpat est velit egestas. Porttitor lacus luctus accumsan tortor posuere ac. A diam maecenas sed enim ut. Adipiscing elit duis tristique sollicitudin nibh sit amet commodo nulla. Et ultrices neque ornare aenean euismod elementum nisi quis.")
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor),
            label.bottomAnchor.constraint(equalTo: view.readableContentGuide.bottomAnchor)
        ])
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .green
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20)
        
        return label
    }
}

