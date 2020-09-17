//
//  AccountView.swift
//  Summit
//
//  Created by Rohan Nagar on 7/20/20.
//  Copyright © 2020 Rohan Nagar. All rights reserved.
//

import SwiftUI

struct AccountView: View {
  var body: some View {
    NavigationView {
      List(["Bank 1", "401(k) 1"], id: \.hashValue) { account in
        NavigationLink(destination: AccountDetail().navigationBarTitle(Text(account))) {
          HStack {
            Text(account)

            Spacer()
          }
        }
      }
        // Change this for iOS 14 to InsetGroupedListStyle
      .listStyle(GroupedListStyle())
      .environment(\.horizontalSizeClass, .regular)
      .navigationBarTitle(Text("Accounts"))
        .navigationBarItems(trailing: NavigationLink(destination: AddAccountView().navigationBarTitle(Text("Add Account"))) {
        Image(systemName: "plus.circle.fill")
          .foregroundColor(Color.purple)
          .font(.title)
      })
    }
  }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
