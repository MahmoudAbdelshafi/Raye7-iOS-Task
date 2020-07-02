//
//  HomeCell.swift
//  Raye7-IOS-Task
//
//  Created by Mahmoud on 7/1/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {
    
    //MARK:- Properties
    
    var league:League?{
        
        didSet{
            leagueLabel.text = league?.strLeague
            sportLabel.text = league?.strSport
            aternateLabel.text = league?.strLeagueAlternate
            }
        }
    
    
    //MARK:- IBOutlets
    
    @IBOutlet private weak var leagueLabel: UILabel!
    @IBOutlet private weak var sportLabel: UILabel!
    @IBOutlet private weak var aternateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
