import SwiftUI

struct LittleLemonLogo: View {
    @EnvironmentObject var model:Model
    var body: some View {
        //Creating a view for the logo
        Image("littleLemon")
    }
}

struct LittleLemonLogo_Previews: PreviewProvider {
    static var previews: some View {
        LittleLemonLogo()
    }
}


