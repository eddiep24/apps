//
//  originApp.swift
//  origin
//
//  Created by Edmond Phillips on 12/10/21.
//

import SwiftUI

@main
struct originApp: App {
    @StateObject private var modelData = ModelData()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
