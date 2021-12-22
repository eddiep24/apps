//
//  ViewAlgo.swift
//  Algo
//
//  Created by Edmond Phillips on 12/21/21.
//

import SwiftUI

struct ViewAlgo: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Text("Bubble Sort Desc.")) {
                    Text("Bubble Sort")
                }
                NavigationLink(destination: Text("Merge Sort Desc.")) {
                    Text("Merge Sort")
                }
                NavigationLink(destination: Text("Linear Search Desc")) {
                    Text("Linear Search")
                }
                .navigationTitle("Algorithm")
            }
        }
    }
}

struct ViewAlgo_Previews: PreviewProvider {
    static var previews: some View {
        ViewAlgo()
    }
}
