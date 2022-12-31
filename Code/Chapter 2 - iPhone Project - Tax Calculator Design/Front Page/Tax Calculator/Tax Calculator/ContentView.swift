import SwiftUI

struct ContentView: View
{
    @State private var salary: String = ""
    
    var body: some View
    {
        VStack
        {
            Text( "Annual Salary" )
                .padding(.bottom, 75.0)
            
            TextField( "", text: $salary )
                .frame( width: 200.0 )
                .border( Color.black, width: 1 )
                .padding( .bottom, 75.0 )
                .keyboardType( .decimalPad )
            
            Button
            { }
            label:
            { Text( "Calculate Tax" ) }
                .buttonStyle( .borderedProminent )
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
