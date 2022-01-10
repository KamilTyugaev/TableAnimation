//
//  TableViewController.swift
//  AnimationTable
//
//  Created by IosDeveloper on 10.01.2022.
//

import UIKit

class TableViewController: UITableViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        animateTableView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Like ♥︎ Subscribe"
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        30
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel!.text = "Like ♥︎ Subscribe"
        return cell
    }
    private func animateTableView(){
        tableView.reloadData()
        
        let cells = tableView.visibleCells
        let tableViewWidth = tableView.bounds.width
        var delay:Double = 0
        
        for cell in cells{
            cell.transform = CGAffineTransform(translationX: tableViewWidth, y: 0)
            
            UIView.animate(withDuration: 1.5,
                           delay: delay * 0.05,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                            cell.transform = CGAffineTransform.identity
                           })
            delay += 1
        }
    }
}

