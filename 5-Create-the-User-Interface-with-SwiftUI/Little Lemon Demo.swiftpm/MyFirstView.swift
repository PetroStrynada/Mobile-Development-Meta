//
//  MyFirstView.swift
//  Little Lemon Demo
//
//  Created by Petro Strynada on 09.01.2023.
//

import SwiftUI

struct MyFirstView: View {
    var body: some View {
        LazyVStack {
            Text("Little Lemon")
            Text("Hi there")
            Text("Whats are you?")
            Text("Is it you?")
        }
        .padding(.trailing,-200)
        .padding(.bottom, 250)
    }
}

struct MyFirstView_Previews: PreviewProvider {
    static var previews: some View {
        MyFirstView()
    }
}
