//
//  Navigation.swift
//  ForExperiments
//
//  Created by Petro Strynada on 19.01.2023.
//

import SwiftUI

struct Navigation: View {
    
    /*
    //Changing background color for tab bar
    init() {
        UITabBar.appearance().backgroundColor = UIColor.yellow
    }
     */
    
    var body: some View {
        TabView {
            ReceivedView()
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            SentView()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            AccountView()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
