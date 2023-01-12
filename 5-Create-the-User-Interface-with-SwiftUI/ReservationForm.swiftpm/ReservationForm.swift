//
//  ReservationForm.swift
//  ReservationForm
//
//  Created by Petro Strynada on 11.01.2023.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName: String = ""
    var body: some View {
        Form{
            TextField("Customer name", text: $customerName, onEditingChanged: { status in print(status) } )
                .onSubmit( {print("Submitted")} )
                .onChange(of: customerName, perform: { newValue in print(newValue) })
        }
    }
}

struct ReservationForm_Previews: PreviewProvider {
    static var previews: some View {
        ReservationForm()
    }
}
