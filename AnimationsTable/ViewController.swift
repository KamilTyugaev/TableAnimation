//
//  ViewController.swift
//  AnimationsTable
//
//  Created by IosDeveloper on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {


    let goToTableViewButton:UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        button.setTitle("Go To TableView", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(goToTableViewButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Like && Subscribe"
        
        setupViews()
        setConstrains()
    }
    
    private func setupViews(){
        view.backgroundColor = .white
        view.addSubview(goToTableViewButton)
    }
    
    @objc private func goToTableViewButtonTapped(){
        let tableViewController = TableViewController()
        navigationController?.pushViewController(tableViewController, animated: true)
    }
     
    private func setConstrains(){
        NSLayoutConstraint.activate([
            goToTableViewButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToTableViewButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            goToTableViewButton.heightAnchor.constraint(equalToConstant: 60),
            goToTableViewButton.widthAnchor.constraint(equalToConstant: 240)
        ])
    }
}

