import SwiftUI

struct FrontView: View
{
    @State private var salary: String = ""
    @State private var isSalaryValid: Bool = false
        
    var body: some View
    {
        NavigationView
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
                
                NavigationLink( destination: ResultsView( salary: $salary ), isActive: $isSalaryValid, label:
                {
                    Text( "Calculate Tax" )
                        .bold( )
                        .frame( width: 200, height: 50 )
                        .background( Color.blue )
                        .foregroundColor( Color.white )
                        .cornerRadius( 10 )
                        .onTapGesture
                        {
                            GoToResultsView( )
                        }
                } )
            }
            .padding( )
            .navigationTitle( "Main Page" )
        }
    }
    
    func GoToResultsView( )
    {
        if ( nil != Float( salary ) )
        {
            if ( Float( salary )! > 0 )
            { isSalaryValid = true }
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        FrontView( )
    }
}
