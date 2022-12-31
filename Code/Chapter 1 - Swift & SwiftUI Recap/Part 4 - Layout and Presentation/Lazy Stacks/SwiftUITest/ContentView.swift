import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        ScrollView
        {
            LazyVStack
            {
                ForEach( 1...1000, id: \.self )
                {
                    value in
                    Text( "Line \( value )" )
                }
            }
        }
        .frame( height: 256 )
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView( )
    }
}

