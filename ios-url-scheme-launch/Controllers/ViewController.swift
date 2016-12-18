//
//  ViewController.swift
//  ios-url-scheme-launch
//
//  Created by Eiji Kushida on 2016/12/18.
//  Copyright © 2016年 Eiji Kushida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    var abc = ""
    var word = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = "\(abc) - \(word)"
    }
}

