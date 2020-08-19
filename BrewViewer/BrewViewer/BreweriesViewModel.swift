//
//  BreweriesViewModel.swift
//  BrewViewer
//
//  Created by Scott on 8/19/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI
import Combine

class BreweriesViewModel: ObservableObject {
    
    private let url = URL(string: "https://api.openbrewerydb.org/breweries")
    
    private var task: AnyCancellable?
    
    @Published var breweries: [Brewery] = []
    
    func fetchBreweries() {
        
        task = URLSession.shared.dataTaskPublisher(for: url!)
            .map { $0.data }
            .decode(type: [Brewery].self, decoder: JSONDecoder())
        .replaceError(with: [])
        .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \BreweriesViewModel.breweries, on: self)
        
    }
}
