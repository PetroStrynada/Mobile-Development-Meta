import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            
            AllNavigationView().environmentObject(ScoreCount())
            
            //ContentView()
        }
    }
}
