//
//  TeeListCell.swift
//  iOS_CW1_Project
//
//  Created by User-2 on 2024-03-27.
//

import SwiftUI

struct TeeListCell: View {
    let tee:Tee
    var body: some View {
        HStack{
            Image("new-tee1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 100)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 10){
                Text(tee.title)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text(tee.des)
                    .fontWeight(.light)
                
                Text("LKR\(tee.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

struct TeeListCell_Previews: PreviewProvider {
    static var previews: some View {
        TeeListCell(tee:TeeData.sample)
    }
}
