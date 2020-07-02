//
//  HomeCell.swift
//  Raye7-IOS-Task
//
//  Created by Mahmoud on 7/1/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {
    
    //MARK:- IBOutlets
    
    @IBOutlet weak var leagueLabel: UILabel!
    @IBOutlet weak var sportLabel: UILabel!
    @IBOutlet weak var aternateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
