//
//  ReceivedView.swift
//  ForExperiments
//
//  Created by Petro Strynada on 19.01.2023.
//

import SwiftUI

struct ReceivedView: View {
    var body: some View {
        ZStack {
            Text("Received")
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.mint)
        .clipped()
        
    }
}

struct ReceivedView_Previews: PreviewProvider {
    static var previews: some View {
        ReceivedView()
    }
}
