//
//  Leagues.swift
//  Raye7-IOS-Task
//
//  Created by Mahmoud on 7/1/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation

// MARK: - Leagues

struct Leagues: Decodable {
    let leagues: [League]?
}

// MARK: - League

struct League: Decodable {
    let idLeague,strSport: String?
    var strLeague, strLeagueAlternate: String?
    let strCountry, strDescriptionEN : String?
    let strLogo: String?
}
