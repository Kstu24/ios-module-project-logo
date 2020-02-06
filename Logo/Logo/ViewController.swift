//
//  ViewController.swift
//  Logo
//
//  Created by Kevin Stewart on 2/4/20.
//  Copyright © 2020 Kevin Stewart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logo: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedEdges()
        
        
    }
    
    @IBOutlet var youtubeBackroundView: UIView!
    
    func roundedEdges() {
        youtubeBackroundView.layer.cornerRadius = 50
        
    }
    
}

