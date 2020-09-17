//
//  NetWorthView.swift
//  Summit
//
//  Created by Rohan Nagar on 7/20/20.
//  Copyright © 2020 Rohan Nagar. All rights reserved.
//

import SwiftUI
import Charts

struct NetWorthView: View {
  @State var data2: [CGFloat] = (0..<20).map { _ in .random(in: 0.1...1.0) }
  @State var data3: [CGFloat] = (0..<20).map { _ in .random(in: 0.1...1.0) }

  var body: some View {

    NavigationView {
      VStack {
        Text("$100,000").font(.title).padding()

        Chart(data: data2)
          .chartStyle(
            ColumnChartStyle(column: Capsule().foregroundColor(Color(red: 255.0/255.0, green: 182.0/255.0, blue: 193.0/255.0, opacity: 1.0)), spacing: 2))
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .frame(height: 200)
        .padding()

        Chart(data: data3)
          .chartStyle(
            ColumnChartStyle(column: Capsule().foregroundColor(.purple), spacing: 2))
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .frame(height: 200)
        .padding()

        Spacer()
      }
      .navigationBarTitle(Text("Net Worth"))
      .navigationBarItems(trailing: NavigationLink(destination: SettingsView().navigationBarTitle(Text("Settings"))) {
        Image(systemName: "slider.horizontal.3")
          .foregroundColor(Color.black)
          .font(.title)
      })
    }
  }
}

struct NetWorthView_Previews: PreviewProvider {
    static var previews: some View {
        NetWorthView()
    }
}
