//
//  DetailsCell.swift
//  Raye7-IOS-Task
//
//  Created by Mahmoud on 7/2/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class DetailsCell: UITableViewCell {
   
    //MARK:- IBOutlets
    
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sportLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
