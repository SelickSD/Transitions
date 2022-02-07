//
//  FifthViewController.swift
//  Transitions_VCLifecycle
//
//  Created by Саидов Тимур on 03.02.2022.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.title = "Второй"
        self.textLabel.text = "Hello, World!"
    }
}
