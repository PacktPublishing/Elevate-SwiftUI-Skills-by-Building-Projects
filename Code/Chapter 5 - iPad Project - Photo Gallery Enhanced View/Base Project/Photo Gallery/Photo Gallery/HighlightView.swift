//
//  ContentView.swift
//  Photo Gallery
//
//  Created by Frahaan on 09/01/2023.
//

import SwiftUI

struct HighlightView: View
{
    private let images: [String] =
    [
        "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV", "FireDEV"
    ]

    private let adaptiveColumns =
    [
        GridItem( .adaptive( minimum: 300 ) )
    ]
    
    var body: some View
    {
        ScrollView
        {
            LazyVGrid( columns: adaptiveColumns, spacing: 20 )
            {
                ForEach( images.indices )
                { i in
                    Image( images[i] )
                        .resizable( )
                        .scaledToFill( )
                        .frame( width: 300, height: 300 )
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        HighlightView( )
    }
}
