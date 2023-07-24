//
//  ViewController.swift
//  Click-Counter
//
//  Created by Sihle Ntuli on 2023/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var lable: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func incrementCount() {
        self.count += 1
        self.lable.text = "\(self.count)"
    }

}

