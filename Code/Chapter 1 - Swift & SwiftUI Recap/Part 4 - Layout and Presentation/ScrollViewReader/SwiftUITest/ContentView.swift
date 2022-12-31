import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        let colors: [Color] = [.red, .green, .blue, .white, .yellow]
        
        ScrollView
        {
            ScrollViewReader
            {
                value in
                Button( "Go to Number 45" )
                {
                    value.scrollTo( 45 )
                }
                .padding( )
                
                ForEach( 0..<1000 )
                {
                    i in
                    Text( "Example \( i )" )
                        .font( .title )
                        .frame( width: 256, height: 256 )
                        .background( colors[i % colors.count] )
                        .id( i )
                }
            }
        }
        .frame( height: 512 )
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView( )
    }
}

