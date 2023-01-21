//
//  Controls.swift
//  ForExperiments
//
//  Created by Petro Strynada on 17.01.2023.
//

import SwiftUI

struct StepperView: View {
    
    //FOR Stepper
    @State private var value = 1
    let step = 1
    let range = 1...50
    
    //FOR Slider
    @State private var speed = 50.0
    @State private var isEditing = false
    
    //FOR Progress
    @State private var progress = 0.5
    
    //FOR Toggle
    @State private var vibrateOnRing1 = false
    @State private var vibrateOnRing2 = true
    @State private var vibrateOnRing = true
    @State private var vibrateOnSilent = false
    
    var body: some View {
        VStack {
            VStack {
                Text("Current guests number \(value)")
                Stepper(value: $value,
                        in: range,
                        step: step) {
                        Text("Number of guests?")
                }
                
                Slider(
                    value: $speed,
                    in: 0...100,
                    step: 1
                ) {
                    Text("Speed")
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("100")
                } onEditingChanged: { editing in
                    isEditing = editing
                }
                Text("\(speed)")
                    .foregroundColor(isEditing ? .red : .blue)
                
                ProgressView(value: progress)
                HStack (spacing: 50) {
                    Button("Less") { progress -= 0.05 }.frame(width: 60, height: 30, alignment: .center).background(Color.mint).cornerRadius(6)
                    Button("More") { progress += 0.05 }.frame(width: 60, height: 30, alignment: .center).background(Color.mint).cornerRadius(6)
                }
                
                Toggle(isOn: $vibrateOnRing1) {
                    Text("Vibrate on Ring")
                }

                Toggle("Vibrate on Ring", isOn: $vibrateOnRing2)
                
                Toggle("Vibrate on Ring", isOn: $vibrateOnRing).toggleStyle(.button)
                Toggle("Vibrate on Silent", isOn: $vibrateOnSilent).toggleStyle(.button)
            }
            
            HStack{
                Image(systemName: "location").imageScale(.small).symbolVariant(.fill).symbolVariant(.slash)
                Image(systemName: "location.slash.fill").imageScale(.small)
                Label("Brain", systemImage: "brain.head.profile").imageScale(.large).symbolVariant(.slash)
                Text("Checkerboard \(Image(systemName: "checkerboard.rectangle"))").imageScale(.large)
            }
            

        }
            .padding(10)
    }
}

struct Controls_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
