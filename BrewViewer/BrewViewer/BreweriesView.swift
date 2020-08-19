//
//  BreweriesView.swift
//  BrewViewer
//
//  Created by Scott on 8/19/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct BreweriesView: View {
    
    //let breweries = [Brewery]()
    
    @ObservedObject var viewModel = BreweriesViewModel()
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                List(viewModel.breweries, id: \.self) {
                    
                    BreweryView(brewery: $0)
        
                }
                .navigationBarTitle("Breweries")
                .onAppear {
                    self.viewModel.fetchBreweries()
                }
                Spacer()
                Text("\(self.viewModel.breweries.count) Breweries")
                    .foregroundColor(.secondary)
                    .font(.system(size: 18))
                Spacer()
            }
        }
    }
}

struct BreweriesView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            BreweriesView()
        }.environment(\.colorScheme, .light)
    }
}
