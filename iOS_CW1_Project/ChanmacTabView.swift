//
//  ContentView.swift
//  iOS_CW1_Project
//
//  Created by User-2 on 2024-03-18.
//

import SwiftUI
import CoreData

struct ChanmacTabView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    var body: some View {
        TabView{
            Text("Test")
                .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ChanmacTabView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
    
}
