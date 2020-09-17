//
//  ContentView.swift
//  Summit
//
//  Created by Rohan Nagar on 7/20/20.
//  Copyright © 2020 Rohan Nagar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            NetWorthView()
                .tabItem {
                    VStack {
                        Image(systemName: "chart.bar.fill")
                        Text("Net Worth")
                    }
                }
                .tag(0)
            AccountView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("Accounts")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
