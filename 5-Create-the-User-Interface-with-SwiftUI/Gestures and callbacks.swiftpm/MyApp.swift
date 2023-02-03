import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            
            //Add .environmentObject(Flag()) or will get a crush
            GestureRecognizer().environmentObject(Flag())
        }
    }
}
