//
//  AccountView.swift
//  ForExperiments
//
//  Created by Petro Strynada on 19.01.2023.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        ZStack {
            Text("Account")
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.indigo)
        .clipped()
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
