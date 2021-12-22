//
//  ContentView.swift
//  origin
//
//  Created by Edmond Phillips on 12/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PictureList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
