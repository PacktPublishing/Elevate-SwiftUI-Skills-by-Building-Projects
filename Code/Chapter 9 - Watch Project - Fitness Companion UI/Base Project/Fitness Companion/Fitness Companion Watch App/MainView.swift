//
//  ContentView.swift
//  Fitness Companion Watch App
//
//  Created by Frahaan on 03/04/2023.
//

import SwiftUI

struct MainView: View
{
    var body: some View
    {
        VStack( alignment: .leading )
        {
            Text( "00:10:44" )
                .font( .title2 )
                .foregroundColor( Color.yellow )
                .padding( .bottom )
            
            Text( "120 BPM" )
            
            Text( "110 Calories" )
            
            Text( "Running" )
        }
        .padding( )
    }
}

struct MainView_Previews: PreviewProvider
{
    static var previews: some View
    {
        MainView( )
    }
}
