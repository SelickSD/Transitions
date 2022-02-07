//
//  SecondViewController.swift
//  Transitions_VCLifecycle
//
//  Created by Саидов Тимур on 03.02.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var text: String?
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textLabel.text = "Hello, World!"
        self.setupTimer()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = false
        self.navigationItem.title = "Заголовок №2"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.cancelTimer()
    }
    
    private func setupTimer() {
        if self.timer == nil {
            let timer = Timer(timeInterval: 2.0,
                              target: self,
                              selector: #selector(self.updateTextlabel),
                              userInfo: nil,
                              repeats: false)
            RunLoop.current.add(timer, forMode: .common)
            timer.tolerance = 0.1
            self.timer = timer
        }
    }
    
    private func cancelTimer() {
        self.timer?.invalidate()
        self.timer = nil
    }
    
    @objc private func updateTextlabel() {
        self.textLabel.text = self.text
    }
}
