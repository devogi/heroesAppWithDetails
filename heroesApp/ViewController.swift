//
//  ViewController.swift
//  heroesApp
//
//  Created by oğuzhan salkım on 3.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTable: UITableView!
    var heroeNames = [String]()
    var heroePics = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTable.delegate = self
        myTable.dataSource = self
        
        
        heroeNames.append("batman")
        heroeNames.append("superman")
        heroeNames.append("ironMan")
        heroeNames.append("CaptainAmerica")
        
        heroePics.append("batman")
        heroePics.append("superman")
        heroePics.append("ironMan")
        heroePics.append("CaptainAmerica")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroeNames.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = heroeNames[indexPath.row]
        return cell
    }
    
    func tableView(
        _ tableView: UITableView,
        commit editingStyle: UITableViewCell.EditingStyle,
        forRowAt indexPath: IndexPath
    ) {
        if editingStyle == .delete {
            heroePics.remove(at: indexPath.row)
            heroeNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }

    
    
    
}

