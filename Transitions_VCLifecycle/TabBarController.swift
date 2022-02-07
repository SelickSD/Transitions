//
//  TabBarController.swift
//  Transitions_VCLifecycle
//
//  Created by Саидов Тимур on 03.02.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    private enum Index: Int {
        case none = 0
        case first
        case second
        
        var title: String {
            switch self {
            case .first:
                return "Первый"
            case .second:
                return "Второй"
            case .none:
                return ""
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabBar()
    }

    private func setupTabBar() {
        self.viewControllers?.enumerated().forEach({ (index, vc) in
            let title: String
            switch index {
            case 0:
                title = Index.first.title
            case 1:
                title = Index.second.title
            default:
                title = Index.none.title
            }
            vc.tabBarItem.title = title
        })
    }
}
