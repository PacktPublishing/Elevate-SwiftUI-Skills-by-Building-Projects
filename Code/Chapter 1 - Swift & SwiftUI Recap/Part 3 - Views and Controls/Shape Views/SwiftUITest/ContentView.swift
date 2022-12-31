import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        VStack
        {
            Rectangle( )
                .fill( .white )
                .frame( width: 128, height: 128 )
            
            RoundedRectangle( cornerRadius: 30, style: .continuous )
                .fill( .blue )
                .frame( width: 128, height: 128 )
            
            Capsule( )
                .fill( .red )
                .frame( width: 128, height: 50 )
            
            Ellipse( )
                .fill( .orange )
                .frame( width: 128, height: 50 )
            
            Circle( )
                .fill( .yellow )
                .frame( width: 128, height: 50 )
        }
        .padding( )
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView( )
    }
}
