//
//  ParentView.swift
//  Setting up parent and child views
//
//  Created by Petro Strynada on 17.01.2023.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Rectangle()
            Text("Rectangle One")
                .foregroundColor(.white)
                .padding(20)
                .background(.yellow)
                .cornerRadius(10)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.accentColor)
                .frame(width: 100, height: 30, alignment: .center)
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
