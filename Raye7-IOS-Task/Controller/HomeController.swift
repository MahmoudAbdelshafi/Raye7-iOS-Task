//
//  ViewController.swift
//  Raye7-IOS-Task
//
//  Created by Mahmoud on 7/1/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    //MARK:- Properties
    
    let cell = "HomeCell"
    var leagues = [League]()
    
    //MARK:- IBOutlets
    
    @IBOutlet private weak var homeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Leagues"
        setupTableView()
        getLeagues()
    }
}

//MARK:- Private Functions

extension HomeController{
    
    private func setupTableView(){
        homeTableView.register(UINib(nibName: cell, bundle: nil), forCellReuseIdentifier: cell)
    }
    
    private func getLeagues(){
        BaseAPI.shared.request(router: .getAllLeagues) { (result: Result<Leagues>) -> () in
            switch result {
            case .success(let data):
                self.leagues.append(contentsOf: data.leagues!)
                self.homeTableView.reloadData()
            case .failure(let error):
                print(error)
            }
        }
    }
}

//MARK:- TableView Delegate and DataSource methods

extension HomeController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leagues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cell, for: indexPath) as! HomeCell
        cell.league = leagues[indexPath.item]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsController = storyboard?.instantiateViewController(withIdentifier: "DetailsController") as! DetailsController
        ///Passing the leagueID...
        guard let safeLeagueid = leagues[indexPath.row].idLeague else { return }
        detailsController.idLeague = safeLeagueid
        navigationController?.pushViewController(detailsController, animated: true)
    }
    
}
