//
//  Transaction.swift
//  Summit
//
//  Created by Rohan Nagar on 8/1/20.
//  Copyright © 2020 Rohan Nagar. All rights reserved.
//

import Foundation

struct Transaction: Hashable, Codable, Identifiable {
  var id: String
  var date: Date
  var amount: Int64
  var memo: String
}
