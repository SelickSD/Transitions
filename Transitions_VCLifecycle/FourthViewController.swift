//
//  FourthViewController.swift
//  Transitions_VCLifecycle
//
//  Created by Саидов Тимур on 03.02.2022.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Заголовок №2"
        self.setupTextFields()
    }
    
    private func setupTextFields() {
        self.firstTextField.placeholder = "Имя"
        self.secondTextField.placeholder = "Фамилия"
    }
}
