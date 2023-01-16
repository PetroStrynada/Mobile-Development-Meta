//
//  ReservationCalendar.swift
//  AddingControls
//
//  Created by Petro Strynada on 15.01.2023.
//

import SwiftUI

struct ReservationCalendar: View {
    @State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let nowYear = 2023
        let nowMonth = 1
        let startComponents = DateComponents(year: nowYear, month: nowMonth, day: 1)
        let endComponents = DateComponents(year: nowYear, month: nowMonth + 1, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    
    var body: some View {
        Form {
        VStack {
                HStack {
                    VStack {
                        DatePicker(
                            "",
                            selection: $date,
                            in: dateRange,
                            displayedComponents: [.date, .hourAndMinute]
                        )
                    }
                   
                    //.frame(alignment: .trailing)
                    
                    Button(action: { print("do something!") }) {
                        HStack {
                            Image(systemName: "arrow.forward.circle").foregroundColor(Color.blue)
                            Text("Done")
                        }
                    }
                }
            }
        .padding(5)
            
            Text("Data is \(date.formatted(date: .long, time: .complete))")
            .padding(5)
        }
        .frame(width: 380, height: 800, alignment: .top)
    }
}


struct ReservationCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCalendar()
    }
}
