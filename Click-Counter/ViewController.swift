//
//  ViewController.swift
//  Click-Counter
//
//  Created by Sihle Ntuli on 2023/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var lable: UILabel!
    var secondLable: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.lable = label
        
        let secondLable = UILabel()
        secondLable.frame = CGRect(x: 150, y: 175, width: 60, height: 60)
        secondLable.text = "0"
        view.addSubview(secondLable)
        self.secondLable = secondLable
        
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        view.addSubview(button)
        
        let secondbutton = UIButton()
        secondbutton.frame = CGRect(x: 150, y: 350, width: 60, height: 60)
        secondbutton.setTitle("Click", for: .normal)
        secondbutton.setTitleColor(.blue, for: .normal)
        view.addSubview(secondbutton)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        secondbutton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.lable.text = "\(self.count)"
        self.secondLable.text = "\(self.count)"
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.lable.text = "\(self.count)"
        self.secondLable.text = "\(self.count)"
    }

}

