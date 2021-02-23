//
//  ViewController.swift
//  AutoLayout-1
//
//  Created by bahadir on 21.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var nameLabel : UILabel!
    var imageView : UIImageView!
    var followButton: UIButton!
    var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    func setupViews(){
        
        nameLabel = UILabel()
        nameLabel.text = "Tim Cook"
        nameLabel.textColor = .black
        nameLabel.textAlignment = NSTextAlignment.center
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        
        imageView = UIImageView()
        imageView.image = UIImage(named: "tim")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        view.addSubview(imageView)
        
        followButton = UIButton()
        followButton.setTitle("Follow", for: .normal)
        followButton.setTitleColor(.blue, for: .normal)
        followButton.setTitleColor(.white, for: .highlighted)
        followButton.translatesAutoresizingMaskIntoConstraints = false
        followButton.layer.borderWidth = 1
        followButton.layer.cornerRadius = 5
        followButton.layer.borderColor = UIColor.blue.cgColor
        followButton.addTarget(self, action: #selector(followButtonTapped), for: .touchUpInside)
        view.addSubview(followButton)
        
        textView = UITextView()
        textView.text = "Apple CEO Tim Cook graduated from Auburn University with a bachelor's degree in industrial engineering and earned an MBA from Duke University's Fuqua School of Business. Following a 12-year career at IBM, Cook went on to executive roles at Intelligent Electronics and Compaq, before joining Apple in 1998. In August 2011, Cook was named Apple's new CEO, following the death of predecessor Steve Jobs. Tim Cook was born Timothy D. Cook in the small town of Robertsdale, Alabama, on November 1, 1960. The middle of three sons born to father Donald, a shipyard worker, and mother Geraldine, a homemaker, Cook attended Robertsdale High School and graduated second in his class in 1978. He enrolled at Auburn University in Alabama, graduating in 1982 with a bachelor's degree in industrial engineering, and went on to earn a Master of Business Administration degree from Duke University's Fuqua School of Business in 1988. Additionally, Cook was awarded the title of Fuqua Scholar—an honor given only to students at the business school who graduate in the top 10 percent of their class."
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        view.addSubview(textView)
    }
    
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor ,constant: 15),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            imageView.widthAnchor.constraint(equalToConstant: 200)
        ])
        NSLayoutConstraint.activate([
            followButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15),
            followButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            followButton.heightAnchor.constraint(equalToConstant: 50),
            followButton.widthAnchor.constraint(equalToConstant: 100)
        ])
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: followButton.bottomAnchor, constant: 15),
            textView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            textView.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: 15),
            textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15)
        ])
        
    }
    
    @objc func followButtonTapped(){
        
        if followButton.currentTitle == "Follow" {
            followButton.setTitle("Following", for: .normal)
            followButton.backgroundColor = UIColor.blue
            followButton.setTitleColor(.white, for: .normal)
        } else {
            followButton.setTitle("Follow", for: .normal)
            followButton.backgroundColor = UIColor.white
            followButton.setTitleColor(.blue, for: .normal)
        }
        
    }

}

