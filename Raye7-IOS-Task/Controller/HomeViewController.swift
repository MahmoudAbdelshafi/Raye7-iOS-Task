//
//  ViewController.swift
//  Raye7-IOS-Task
//
//  Created by Mahmoud on 7/1/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK:- Properties
    
    let cell = "HomeCell"
    
    //MARK:- IBOutlets
    
    @IBOutlet weak var homeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
}

//MARK:- Private Functions

extension HomeViewController{
    
    private func setupTableView(){
        homeTableView.register(UINib(nibName: cell, bundle: nil), forCellReuseIdentifier: cell)
    }
}

//MARK:- TableView Delegate and DataSource methods

extension HomeViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cell, for: indexPath) as! HomeCell
        return cell
    }
    
    
}
