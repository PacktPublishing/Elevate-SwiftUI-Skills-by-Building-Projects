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
    
    @State private var isClicked: Bool = false
    @State private var imageFile: String = ""
    @State private var imageName: String = ""
    @State private var imageDate: String = ""
    @State private var imageDescription: String = ""
    
    var body: some View
    {
        NavigationView
        {
            ScrollView
            {
                LazyVGrid( columns: adaptiveColumns, spacing: 20 )
                {
                    ForEach( images.indices )
                    { i in
                        NavigationLink( destination: EnhancedView( imageFile: $imageFile, imageName: $imageName, imageDate: $imageDate, imageDescription: $imageDescription ), isActive: $isClicked, label:
                            {
                            Image( images[i] )
                                .resizable( )
                                .scaledToFill( )
                                .frame( width: 300, height: 300 )
                                .onTapGesture {
                                    imageFile = images[i]
                                    imageName = "FireDEV Podcast"
                                    imageDate = "22/09/2022"
                                    imageDescription = "Aspiring entrepreneurs and industry professionals alike can learn a lot from a fireside chat with interesting people in the industry. From small indie developers to CEOs of major companies, these chats provide an opportunity to gain insight into the unique stories of success that have led these individuals to their current positions. Through conversations about their experiences and challenges, we can gain valuable knowledge about their successes, failures, and the strategies they used to reach their goals. We can also gain insight into their motivations and the values that drive their decisions. By engaging in a fireside chat with these industry leaders, we can gain a better understanding of the industry and the people within it, and gain valuable knowledge that can help us to reach our own goals."
                                    
                                    isClicked = true
                                }
                        } )
                    }
                }
            }
        }
        .navigationViewStyle( StackNavigationViewStyle( ) )

    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        HighlightView( )
    }
}
