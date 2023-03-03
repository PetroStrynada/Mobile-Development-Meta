import Foundation

//added Identifiable and let id = UUID() to work within the List in LocationsView
struct RestaurantLocation:Hashable, Identifiable {
    let id = UUID()
  let city:String
  let neighborhood:String
  let phoneNumber:String
  
  init(city:String = "",
       neighborhood:String = "",
       phoneNumber:String = "") {
    self.city = city
    self.neighborhood = neighborhood
    self.phoneNumber = phoneNumber
  }
}


