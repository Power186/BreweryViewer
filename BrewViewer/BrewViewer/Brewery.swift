//
//  Brewery.swift
//  BrewViewer
//
//  Created by Scott on 8/19/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation

struct Brewery: Decodable, Hashable {
    
    let name: String
    let brewery_type: String
    let state: String
    
    var imageName: String { return brewery_type }
}

//Image brewery_type
//micro
//contract
//brewpub
//regional
