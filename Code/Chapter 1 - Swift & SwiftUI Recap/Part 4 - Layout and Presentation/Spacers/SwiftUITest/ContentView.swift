import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        Text( "Label 1" )
        
        Spacer( ).frame( height: 64 )
        
        Text( "Label 2" )
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView( )
    }
}

