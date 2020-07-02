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
    var idLeague = String()
    var league = [League]()
    
    
    
    //MARK:- IBOutlets
    
    @IBOutlet private weak var logoImage: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var sportLabel: UILabel!
    @IBOutlet private weak var countryLabel: UILabel!
    @IBOutlet private weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Details"
        
        getLeagueDetails()
    }
    
}

//MARK:- Private Functions
extension DetailsController{
    
    private func getLeagueDetails(){
        BaseAPI.shared.request(router: .getLeague(idLeague: idLeague)) { (result: Result<Leagues>) -> () in
            switch result {
            case .success(let data):
                self.handelLeagueData(data.leagues![0])
                self.league.append(contentsOf: data.leagues!)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    private func handelLeagueData(_ league:League){
        nameLabel.text = league.strLeague
        sportLabel.text = league.strSport
        countryLabel.text = league.strCountry
        descriptionTextView.text = league.strDescriptionEN
    }
}


