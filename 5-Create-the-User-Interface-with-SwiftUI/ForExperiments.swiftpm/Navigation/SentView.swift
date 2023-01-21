//
//  SentView.swift
//  ForExperiments
//
//  Created by Petro Strynada on 19.01.2023.
//

import SwiftUI

struct SentView: View {
    var body: some View {
        ZStack {
            Text("Sent")
                .font(.title)
                .foregroundColor(.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple)
        .clipped()
    }
}

struct SentView_Previews: PreviewProvider {
    static var previews: some View {
        SentView()
    }
}
