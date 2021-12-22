//
//  AlgoList.swift
//  Algo
//
//  Created by Edmond Phillips on 12/20/21.
//

import SwiftUI

struct AlgoList: View {
    var body: some View {
            TabView {
                ViewAlgo()
                    .tabItem() {
                        Text("Algorithms")
                }
                ViewDataS()
                    .tabItem() {
                        Text("Data Structures")
            }
        }
    }
}

struct AlgoList_Previews: PreviewProvider {
    static var previews: some View {
        AlgoList()
    }
}
