//
//  ViewController.swift
//  Logo
//
//  Created by Kevin Stewart on 2/4/20.
//  Copyright © 2020 Kevin Stewart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logo: Logo!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func roundEdges() {
        logo.layer.cornerRadius = 12
    }
    
}

