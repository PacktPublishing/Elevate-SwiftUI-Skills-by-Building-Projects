//
//  ContentView.swift
//  Fitness Companion Watch App
//
//  Created by Frahaan on 03/04/2023.
//

import SwiftUI

extension Color
{
    static let lockColour = Color( "lockColour" )
    static let lockColourBackground = Color( "lockColourBackground" )
    
    static let newColour = Color( "newColour" )
    static let newColourBackground = Color( "newColourBackground" )
    
    static let endColour = Color( "endColour" )
    static let endColourBackground = Color( "endColourBackground" )
    
    static let pauseColour = Color( "pauseColour" )
    static let pauseColourBackground = Color( "pauseColourBackground" )
}

struct MainView: View
{
    @State private var counter = 0
    
    @State private var timerString = "00:00:00"
    @State private var bpm = 120
    @State private var calories = 110
    @State private var activity = "Running"
    
    let timer = Timer.publish( every: 1, on: .main, in: .common ).autoconnect( )
    
    func Lock( )
    { print( "Lock button is pressed" ); }
    
    func New( )
    { print( "New button is pressed" ); }
    
    func End( )
    { print( "End button is pressed" ); }
    
    func Pause( )
    { print( "Pause button is pressed" ); }
    
    var body: some View
    {
        
        TabView
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
            
            VStack
            {
                HStack
                {
                    VStack
                    {
                        ZStack
                        {
                            RoundedRectangle( cornerRadius: 18, style: .continuous )
                                .foregroundColor( .lockColourBackground )
                                .frame( width: 70, height: 64 )
                            
                            Image( systemName: "drop.fill" )
                                .resizable( )
                                .foregroundColor( .lockColour )
                                .aspectRatio( 1.0, contentMode: .fit )
                                .frame( width: 32 )
                        }
                        
                        
                        Text( "Lock" )
                    }.onTapGesture { Lock( ) }
                    
                    VStack
                    {
                        ZStack
                        {
                            RoundedRectangle( cornerRadius: 18, style: .continuous )
                                .foregroundColor( .newColourBackground )
                                .frame( width: 70, height: 64 )
                            
                            Image( systemName: "plus" )
                                .resizable( )
                                .foregroundColor( .newColour )
                                .aspectRatio( 1.0, contentMode: .fit )
                                .frame( width: 32 )
                        }
                        
                        
                        Text( "New" )
                    }.onTapGesture { New( ) }
                }
                
                HStack
                {
                    VStack
                    {
                        ZStack
                        {
                            RoundedRectangle( cornerRadius: 18, style: .continuous )
                                .foregroundColor( .endColourBackground )
                                .frame( width: 70, height: 64 )
                            
                            Image( systemName: "xmark" )
                                .resizable( )
                                .foregroundColor( .endColour )
                                .aspectRatio( 1.0, contentMode: .fit )
                                .frame( width: 32 )
                        }
                        
                        
                        Text( "End" )
                    }.onTapGesture { End( ) }
                    
                    VStack
                    {
                        ZStack
                        {
                            RoundedRectangle( cornerRadius: 18, style: .continuous )
                                .foregroundColor( .pauseColourBackground )
                                .frame( width: 70, height: 64 )
                            
                            Image( systemName: "pause" )
                                .resizable( )
                                .foregroundColor( .pauseColour )
                                .aspectRatio( 1.0, contentMode: .fit )
                                .frame( width: 32 )
                        }
                        
                        
                        Text( "Pause" )
                    }.onTapGesture { Pause( ) }
                }
            }.padding( .top, 20.0 )
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
