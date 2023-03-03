//
//  ContentView.swift
//  App Store
//
//  Created by Frahaan on 21/02/2023.
//

import SwiftUI

struct MainView: View
{
    @State private var searchText = ""
    
    var body: some View
    {
        NavigationView
        {
            List
            {
                Label( "Discover", systemImage: "star" )
                .onTapGesture
                {
                    print( "Discover" )
                }
                Label( "Arcade", systemImage: "gamecontroller" )
                Label( "Create", systemImage: "paintbrush" )
                Label( "Categories", systemImage: "square.grid.3x3.square" )
                Label( "Favorites", systemImage: "heart" )
                Label( "Updates", systemImage: "square.and.arrow.down" )
            }.searchable( text: $searchText )
                .onSubmit( of: .search )
                {
                    print( searchText )
                }
        }
    }
}

struct MainView_Previews: PreviewProvider
{
    static var previews: some View
    {
        MainView( )
    }
}
