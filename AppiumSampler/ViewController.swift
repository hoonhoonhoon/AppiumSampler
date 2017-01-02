//
//  ViewController.swift
//  AppiumSampler
//
//  Created by hoonhoon on 2017. 1. 2..
//  Copyright © 2017년 최광훈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labels: [UILabel]!
    
    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labels.forEach{$0.text = ""}
        buttons.forEach{$0.addTarget(self, action: #selector(click(_:)), for: .touchUpInside)}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func click(_ sender: UIButton) {
        guard let title = sender.title(for: .normal) else {return}
        labels.forEach{$0.text = "Hello, \(title) world"}
    }

}

