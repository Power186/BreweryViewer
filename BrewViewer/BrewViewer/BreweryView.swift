//
//  ContentView.swift
//  BrewViewer
//
//  Created by Scott on 8/19/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct BreweryView: View {
    private let brewery: Brewery
    private var viewModel = BreweriesViewModel()
    
    init(brewery: Brewery) {
        self.brewery = brewery
    }
    
    var body: some View {
        
        NavigationLink(destination: EmptyView()) {
            Image(brewery.brewery_type)
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(8)
                .shadow(radius: 8)
            
            VStack(alignment: .leading, spacing: 15) {
                Text(brewery.name)
                    .font(.system(size: 24))
                    .foregroundColor(.orange)
                
                Text("Type: \(brewery.brewery_type) | State: \(brewery.state)")
                    .font(.headline)
            }.padding(5)
        }
    }
}



