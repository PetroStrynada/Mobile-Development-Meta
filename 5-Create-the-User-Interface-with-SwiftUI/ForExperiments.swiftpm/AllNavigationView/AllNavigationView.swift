//
//  AllNavigationView.swift
//  ForExperiments
//
//  Created by Petro Strynada on 25.01.2023.
//

import SwiftUI

class ScoreCount: ObservableObject {
    @Published var score: Int = 1
    @Published var scoreHeads: Int = 0
    @Published var scoreTails: Int = 0
}


struct AllNavigationView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
                Text("You are flip a coin. Choose heads or tails")

                NavigationLink(destination: ResultView(choice: "Heads")) {
                    VStack {
                        Text("Chose Heads")
                            .frame(width: 150, height: 30)
                            .background(.brown)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                }

                NavigationLink(destination: ResultView(choice: "Tails")) {
                    VStack {
                        Text("Chose Tails")
                            .frame(width: 150, height: 30)
                            .background(.indigo)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                }
            }
            .navigationTitle("First page")
        }
    }
}


struct ResultView: View {
    var choice: String
    @EnvironmentObject var scoreHeadsCount: ScoreCount
    @EnvironmentObject var scoreTailsCount: ScoreCount
    
    var body: some View {
        
        switch choice {
        case "Heads":
            VStack(spacing: 20) {
                Text("You choice \(choice)")
                Text("Your score is \(scoreHeadsCount.scoreHeads)")
                HStack(spacing: 50) {
                    Button("Rise") {
                        self.scoreHeadsCount.scoreHeads += 1
                    }
                    .frame(width: 60, height: 30)
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(6)
                    Button("Down") {
                        self.scoreHeadsCount.scoreHeads -= 1
                    }
                    .frame(width: 60, height: 30)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(6)
                }
            }
            .navigationTitle("Heads")
        case "Tails":
            VStack(spacing: 20) {
                Text("You choice \(choice)")
                Text("Your score is \(scoreTailsCount.scoreTails)")
                HStack(spacing: 50) {
                    Button("Rise") {
                        self.scoreTailsCount.scoreTails += 1
                    }
                    .frame(width: 60, height: 30)
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(6)
                    Button("Down") {
                        self.scoreTailsCount.scoreTails -= 1
                    }
                    .frame(width: 60, height: 30)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(6)
                }
            }
            .navigationTitle("Tails")
        default:
            Text("Error 404")
        }
        
        NavigationLink(destination: Next()) {
            Text("Go to next")
                .frame(width: 150, height: 30)
                .background(.brown)
                .foregroundColor(.white)
                .cornerRadius(12)
        }
    }
}


struct Next: View {
    @EnvironmentObject private var scoreCount: ScoreCount
    let step = 1
    let range = 1...50
    
    var body: some View {
        
        Text("Next view \(scoreCount.score)")
        Stepper(value: $scoreCount.score,
                in: range,
                step: step) {
                Text("Score number")
        }
    }
}


struct AllNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AllNavigationView().environmentObject(ScoreCount())
    }
}
