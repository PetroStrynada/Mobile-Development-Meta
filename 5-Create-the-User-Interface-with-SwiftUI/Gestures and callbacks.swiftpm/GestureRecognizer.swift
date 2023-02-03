//
//  GestureRecognizer.swift
//  Gestures and callbacks
//
//  Created by Petro Strynada on 02.02.2023.
//

import SwiftUI

//For sawing data (when reload screen button will have last chosen property)
class Flag: ObservableObject {
    
    @Published var flag1: Bool = false
    @Published var flag2: Bool = false
    
}


struct GestureRecognizer: View {
    
    //Here at some unknown reason data will not be lost even with @State property instead of using ObservableObject class
    @EnvironmentObject var flagFirst: Flag

    var body: some View {
            NavigationView {
                VStack {
                Text("Tap Me")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(15)
                    .background(flagFirst.flag1 ? .red : .green)
                    .cornerRadius(20)
                    .onTapGesture {
                        flagFirst.flag1.toggle()
                    }
                    
                    NavigationLink(destination: NextView()) {
                    Text("Next view")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(15)
                        .background(.mint)
                        .cornerRadius(20)
                }
            }
        }
    }
}


struct NextView: View {
    
    //Can be done with @State, but we will lose data every time reload screen
    @EnvironmentObject var flagNextView: Flag
    
    var body: some View {
        Text("Tap My 2")
            .foregroundColor(.white)
            .font(.largeTitle)
            .padding(15)
            .background(flagNextView.flag2 ? .orange : .cyan)
            .cornerRadius(20)
            .onTapGesture {
                flagNextView.flag2.toggle()
        }
    }
}



struct GestureRecognizer_Previews: PreviewProvider {
    static var previews: some View {
        
        //Add .environmentObject(Flag()) or will get a crush
        //preview missing endearment object
        //Also add .environmentObject(Flag()) in MyApp
        GestureRecognizer().environmentObject(Flag())
    }
}
