//
//  CartView.swift
//  iOS_CW1_Project
//
//  Created by User-2 on 2024-03-26.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        NavigationView{
            Text("Cart View")
                .navigationTitle("My Cart")
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
