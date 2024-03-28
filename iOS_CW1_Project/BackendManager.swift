//
//  BackendManager.swift
//  iOS_CW1_Project
//
//  Created by User-2 on 2024-03-27.
//

import Foundation

final class BackendManager{
    static let shared = BackendManager()
    
    static let baseURL = "https://chanmac-tee.onrender.com/api/"
    private let teeListViewURL = baseURL + "items"
    
    private init(){}
    
    func getTees(completed: @escaping (Result<[Tee], ErrorHandler>)->Void){
        guard let url = URL(string: teeListViewURL) else{
            completed(.failure(.invalidURL))
                return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){ data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else{
                completed(.failure(.invalidData))
                return
            }
            
            do{
                let decoder = JSONDecoder()
                let decodeResponse = try decoder.decode(TeeRespose.self, from: data)
                completed(.success(decodeResponse.TeeRequest))
            }catch{
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
