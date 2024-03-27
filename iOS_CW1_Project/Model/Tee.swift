//
//  Tee.swift
//  iOS_CW1_Project
//
//  Created by User-2 on 2024-03-27.
//

import Foundation

struct Tee:Decodable, Identifiable{
    let id:Int
    let title:String
    let des:String
    let price:Double
    let img:String
}

struct TeeRespose{
    let request: [Tee]
}

struct TeeData{
    static let sample = Tee(
        id: 001,
        title:"My one",
        des:"this is the description for t-shirt",
        price:980,
        img:"")
    
    static let tees = [sample, sample]
}
