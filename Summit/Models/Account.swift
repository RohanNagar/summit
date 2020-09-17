//
//  Account.swift
//  Summit
//
//  Created by Rohan Nagar on 7/21/20.
//  Copyright © 2020 Rohan Nagar. All rights reserved.
//

import Foundation

struct Account: Hashable, Codable, Identifiable {
  var id: String
  var name: String
  var type: String
  var currentBalance: Int64
  var transactions: [Transaction]
  var balancesOverTime: [Date : Int64]

  enum AccountCategory: String, CaseIterable, Codable, Hashable {
    case cash = "Cash"
    case retirement = "Retirement"
    case brokerage = "Brokerage"
  }
}
