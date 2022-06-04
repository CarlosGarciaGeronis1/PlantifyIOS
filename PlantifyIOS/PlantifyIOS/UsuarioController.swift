//
//  UsuarioController.swift
//  PlantifyIOS
//
//  Created by Carlos García Geronis on 03/06/22.
//

import UIKit

class UsuarioController: UIViewController {
    let notificationButton: UIButton = {
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(handleNotification), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(notificationButton)
    }
    @objc private func handleNotification() {
        
    }

}
