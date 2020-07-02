//
//  DetailsController.swift
//  Raye7-IOS-Task
//
//  Created by Mahmoud on 7/2/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class DetailsController: UIViewController {
    
    //MARK:- Properties
    let cell = "DetailsCell"
    
    //MARK:- IBOutlets
    
    @IBOutlet weak var detailsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Details"
        setupTableView()
        getLeagueDetails(idLeague: "4328")
    }
    
}

//MARK:- Private Functions
extension DetailsController{
    
    private func setupTableView(){
        detailsTableView.register(UINib(nibName: cell, bundle: nil), forCellReuseIdentifier: cell)
    }
    
    private func getLeagueDetails(idLeague: String){
        BaseAPI.shared.request(router: .getLeague(idLeague: idLeague)) { (result: Result<Leagues>) -> () in
            switch result {
            case .success(let data):
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }
}

//MARK:- TableView Delegate and DataSource methods

extension DetailsController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cell, for: indexPath) as! DetailsCell
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let detailsController = storyboard?.instantiateViewController(withIdentifier: "DetailsController") as! DetailsController
              // detailsController.userId = user.uid
               navigationController?.pushViewController(detailsController, animated: true)
    }
    
}
