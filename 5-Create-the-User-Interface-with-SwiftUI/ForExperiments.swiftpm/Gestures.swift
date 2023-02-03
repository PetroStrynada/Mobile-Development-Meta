//
//  Gestures.swift
//  ForExperiments
//
//  Created by Petro Strynada on 31.01.2023.
//

import SwiftUI

struct Gestures: View {
    var body: some View {
        Text("Little Lemon Restaurant").onLongPressGesture {
            print("Long Press Detected!")
        }
    }
}

struct Gestures_Previews: PreviewProvider {
    static var previews: some View {
        Gestures()
    }
}
