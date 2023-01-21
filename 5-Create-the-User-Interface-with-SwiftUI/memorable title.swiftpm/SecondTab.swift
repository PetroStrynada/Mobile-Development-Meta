//
//  SecondTab.swift
//  Memorable_Title
//
//  Created by Petro Strynada on 21.01.2023.
//

import SwiftUI

struct SecondTab: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("NavigationLink")
                NavigationLink(destination: NextSecondTab()) {
                    Text("To my next second tab")
                    .frame(width: 200, height: 50)
                    .background(Color.black)
                    .foregroundColor(Color.mint)
                    .cornerRadius(10)
                }
                
            }
            //.navigationTitle(Text("Little Lemon"))
        }
    }
}

struct SecondTab_Previews: PreviewProvider {
    static var previews: some View {
        SecondTab()
    }
}
