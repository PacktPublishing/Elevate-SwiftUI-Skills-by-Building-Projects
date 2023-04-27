//
//  ContentView.swift
//  Fitness Companion Watch App
//
//  Created by Frahaan on 03/04/2023.
//

import SwiftUI

struct MainView: View
{
    @State private var counter = 0
    
    @State private var timerString = "00:00:00"
    @State private var bpm = 120
    @State private var calories = 110
    @State private var activity = "Running"
    
    let timer = Timer.publish( every: 1, on: .main, in: .common ).autoconnect( )
    
    var body: some View
    {
        VStack( alignment: .leading )
        {
            Text( timerString )
                .font( .title2 )
                .foregroundColor( Color.yellow )
                .padding( .bottom )
                .onReceive( timer )
                { time in
                    counter += 1
                    
                    let hours = counter / 3600
                    let minutes = ( counter % 3600 ) / 60
                    let seconds = counter % 3600 % 60
                    
                    timerString = String( format: "%02d", hours ) + ":" + String( format: "%02d", minutes ) + ":" + String( format: "%02d", seconds )
                }
            
            Text( String( bpm ) + " BPM" )
            
            Text( String( calories ) + " Calories" )
            
            Text( activity )
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
