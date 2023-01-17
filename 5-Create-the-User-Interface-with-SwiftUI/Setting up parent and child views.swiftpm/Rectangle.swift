//
//  Rectangle.swift
//  Setting up parent and child views
//
//  Created by Petro Strynada on 17.01.2023.
//

import SwiftUI

struct Rectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.mint)
            .frame(width: 50, height: 50, alignment: .center)
    }
}

struct Rectangle_Previews: PreviewProvider {
    static var previews: some View {
        Rectangle()
    }
}
