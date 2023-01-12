//
//  MainView.swift
//  Lemon App View Exercise
//
//  Created by Petro Strynada on 12.01.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            HStack(spacing: 4) {
                Text("Demo")
                    .font(.system(size: 70, weight: .light, design: .default))
                VStack {
                    Text("Little Lemon")
                        .font(.title)
                        .padding(.bottom, 16)
                    Text("Tomato Tortellini, Bottarga and Carbonara")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                }
                .frame(width: 210, height: 200, alignment: .center)
            }
        }
        .frame(width: 393, height: 200, alignment: .center)
        .background(Color.cyan)
        .foregroundColor(.white)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
