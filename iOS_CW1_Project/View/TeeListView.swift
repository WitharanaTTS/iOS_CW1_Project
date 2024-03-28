//
//  TeeListView.swift
//  iOS_CW1_Project
//
//  Created by User-2 on 2024-03-26.
//

import SwiftUI

struct TeeListView: View {
    
    @State private var tees:[Tee] = []
    var body: some View {
        NavigationView{
            List(tees){ tee in
                TeeListCell(tee:tee)
            }
            .navigationTitle("Just for You")
        }
        .onAppear{
            getTees()
        }
    }
    
    func getTees(){
        BackendManager.shared.getTees{ result in
            DispatchQueue.main.async {
                switch result{
                case .success(let tees):
                    self.tees = tees
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

struct TeeListView_Previews: PreviewProvider {
    static var previews: some View {
        TeeListView()
    }
}
