import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model:Model
    var body: some View {
        VStack {
            //Add the logo view to LocationsView
            LittleLemonLogo() // 1
                .padding(.top, 50)
            //Create a Text element containing one of two strings
            Text(model.displayingReservationForm ? "Reservation Details" : "Select a location") // 2
            .padding([.leading, .trailing], 40)
            .padding([.top, .bottom], 8)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
            
            NavigationView {
                //Create a List inside a NavigationView
                List(model.restaurants) { restaurant in
                    //Add a NavigationLink to the List
                    NavigationLink(destination: ReservationForm(restaurant)) {
                        RestaurantView(restaurant)
                    }
                } // 3
                .listStyle(.plain)
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
        }
        .padding(.top, -10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}

