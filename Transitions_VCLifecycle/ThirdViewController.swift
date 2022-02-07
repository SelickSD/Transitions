//
//  ThirdViewController.swift
//  Transitions_VCLifecycle
//
//  Created by Саидов Тимур on 03.02.2022.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var transitionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationBar()
        self.setupTransitionButton()
    }
    
    private func setupNavigationBar() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Заголовок"
        self.navigationItem.backButtonTitle = "Назад"
    }

    private func setupTransitionButton() {
        self.transitionButton.layer.cornerRadius = 12
        self.transitionButton.clipsToBounds = true
        self.transitionButton.setTitle("Перейти", for: .normal)
        self.transitionButton.backgroundColor = .systemBlue
        self.transitionButton.setTitleColor(.white, for: .normal)
    }
}
