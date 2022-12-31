import SwiftUI

struct MyCell: View
{
    var body: some View
    {
        VStack
        {
            Rectangle( )
                .fill( Color.red )
                .frame( width: 128, height: 128 )
            HStack
            {
                Text( "Line text" )
                    .foregroundColor( .yellow )
                    .font( .headline )
            }
            Text( "PinnedScrollableViews" )
                .foregroundColor( .green )
                .font( .subheadline )
        }
    }
}

struct ContentView: View
{
    var stickyHeaderView: some View
    {
        RoundedRectangle( cornerRadius: 25.0, style: .continuous )
            .fill( Color.gray )
            .frame( maxWidth: .infinity )
            .frame( height: 64 )
            .overlay(
                Text( "Section" )
                    .foregroundColor( Color.white )
                    .font( .largeTitle )
            )
    }
    var body: some View
    {
        NavigationView
        {
            ScrollView
            {
                LazyVStack( alignment: .center, spacing: 50, pinnedViews: [.sectionHeaders], content:
                {
                    ForEach( 0...50, id: \.self )
                    {
                        count in
                        Section( header: stickyHeaderView )
                        {
                            MyCell( )
                        }
                    }
                } )
            }
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

