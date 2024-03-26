//
//  UserAccountView.swift
//  iOS_CW1_Project
//
//  Created by User-2 on 2024-03-26.
//

import SwiftUI

struct UserAccountView: View {
    var body: some View {
        NavigationView{
            Text("User Profile view")
                .navigationTitle("Account")
        }
    }
}

struct UserAccountView_Previews: PreviewProvider {
    static var previews: some View {
        UserAccountView()
    }
}
