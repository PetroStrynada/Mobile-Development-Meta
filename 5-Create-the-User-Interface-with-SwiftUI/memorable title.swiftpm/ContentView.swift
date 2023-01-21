import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    Text("NavigationLink")
                    NavigationLink(destination: NewView()) {
                        Text("To my new view")
                    }
                    
                }
                //.navigationBarTitle(Text("Back"))
                .navigationTitle(Text("Little Lemon"))

            }
            
            
            
        }
        
    }
}

