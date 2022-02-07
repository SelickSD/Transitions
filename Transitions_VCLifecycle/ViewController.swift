//
//  ViewController.swift
//  Transitions_VCLifecycle
//
//  Created by Саидов Тимур on 03.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var transitionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backButtonTitle = "Назад"
        self.setupTransitionButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Заголовок"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationItem.title = ""
    }

    private func setupTransitionButton() {
        self.transitionButton.layer.cornerRadius = 12
        self.transitionButton.clipsToBounds = true
        self.transitionButton.setTitle("Перейти", for: .normal)
        self.transitionButton.backgroundColor = .systemBlue
        self.transitionButton.setTitleColor(.white, for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            segue.identifier == "showSecond",
            let destination = segue.destination as? SecondViewController
        else { return }
        
        destination.text = "Переданный текст"
    }
}
