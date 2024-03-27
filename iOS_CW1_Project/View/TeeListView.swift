//
//  TeeListView.swift
//  iOS_CW1_Project
//
//  Created by User-2 on 2024-03-26.
//

import SwiftUI

struct TeeListView: View {
    var body: some View {
        NavigationView{
            List(TeeData.tees){ tee in
                TeeListCell(tee:tee)
            }
            .navigationTitle("Just for You")
        }
    }
}

struct TeeListView_Previews: PreviewProvider {
    static var previews: some View {
        TeeListView()
    }
}
