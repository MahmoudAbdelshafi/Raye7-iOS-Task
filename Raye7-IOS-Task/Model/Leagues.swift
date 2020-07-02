//
//  Leagues.swift
//  Raye7-IOS-Task
//
//  Created by Mahmoud on 7/1/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation

// MARK: - League

struct Leagues: Decodable {
    let leagues: [League]?
}

// MARK: - League

struct League: Decodable {
    let idLeague, idSoccerXML, idAPIfootball, strSport: String?
    var strLeague, strLeagueAlternate, strDivision, idCup: String?
    let strCurrentSeason, intFormedYear, dateFirstEvent, strGender: String?
    let strCountry, strWebsite: String?
    let strLogo: String?
}
