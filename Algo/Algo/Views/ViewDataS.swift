//
//  ViewDataS.swift
//  Algo
//
//  Created by Edmond Phillips on 12/21/21.
//

import SwiftUI

struct ViewDataS: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ViewArray()) {
                    Text("Array")
                }
                NavigationLink(destination: Text("Array Desc.")) {
                    Text("Table")
                }
                NavigationLink(destination: Text("Array Desc.")) {
                    Text("Graph")
                }
                .navigationTitle("Data Structures")
            }
        }
    }
}

struct ViewDataS_Previews: PreviewProvider {
    static var previews: some View {
        ViewDataS()
    }
}
