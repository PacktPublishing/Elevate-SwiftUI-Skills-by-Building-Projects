import SwiftUI

struct ContentView: View
{
    let items = 1...50
    
    let rows =
    [
        GridItem( .fixed( 32 ) ),
        GridItem( .fixed( 32 ) )
    ]
    
    var body: some View
    {
        ScrollView( .horizontal )
        {
            LazyHGrid( rows: rows, alignment: .center )
            {
                ForEach( items, id: \.self )
                {
                    item in
                    Image(systemName: "\( item ).circle.fill" )
                        .font( .largeTitle )
                }
            }
            .frame( height: 128 )
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView( )
    }
}

