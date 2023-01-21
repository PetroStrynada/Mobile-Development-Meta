//
//  MyTabView.swift
//  Memorable_Title
//
//  Created by Petro Strynada on 20.01.2023.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Main", systemImage: "figure.mind.and.body")
                }
            SecondTab()
                //.badge("!")
                .tabItem {
                    Label("Secondary", systemImage: "figure.martial.arts")
                }
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
