//
//  ForExperiments1.swift
//  ForExperiments
//
//  Created by Petro Strynada on 12.01.2023.
//

import SwiftUI

struct ForExperiments1: View {
    var body: some View {
        ZStack (alignment: .center){
            Circle()
                .foregroundColor(Color.gray)
            Circle()
                .scale(x: 0.75, y: 0.75)
                .foregroundColor(Color.green)
            VStack (spacing: 10){
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text ("Hello, world!")
                HStack {
                    Button("One"){}
                    Button("Two"){}
                }
            }
            
        }
    }
}

struct ForExperiments1_Previews: PreviewProvider {
    static var previews: some View {
        ForExperiments1()
    }
}
