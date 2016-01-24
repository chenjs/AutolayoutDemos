//
//  ViewController.swift
//  StackViewDemo
//
//  Created by chenjs on 16/1/24.
//  Copyright © 2016年 chenjs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        prepareUI()
    }
    
    private func prepareUI() {
        let v1 = UIView()
        v1.backgroundColor = UIColor.redColor()
        v1.translatesAutoresizingMaskIntoConstraints = false
        
        let v2 = UIView()
        v2.backgroundColor = UIColor.greenColor()
        v2.translatesAutoresizingMaskIntoConstraints = false
        
        let v3 = UIView()
        v3.backgroundColor = UIColor.lightGrayColor()
        v3.translatesAutoresizingMaskIntoConstraints = false
        
        let v4 = UIView()
        v4.backgroundColor = UIColor.yellowColor()
        v4.translatesAutoresizingMaskIntoConstraints = false
        
        let sv = UIStackView(arrangedSubviews: [v1, v2, v3, v4])
        sv.axis = .Vertical
        sv.alignment = .Fill
        sv.distribution = .FillEqually
        sv.spacing = 0
        
        sv.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(sv)
        NSLayoutConstraint.activateConstraints([
            sv.topAnchor.constraintEqualToAnchor(self.topLayoutGuide.bottomAnchor),
            //sv.topAnchor.constraintEqualToAnchor(self.view.topAnchor),
            sv.bottomAnchor.constraintEqualToAnchor(self.view.bottomAnchor),
            sv.leadingAnchor.constraintEqualToAnchor(self.view.leadingAnchor),
            sv.trailingAnchor.constraintEqualToAnchor(self.view.trailingAnchor)
            ])
    }
}

