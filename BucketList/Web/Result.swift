//
//  Result.swift
//  BucketList
//
//  Created by Chris Eadie on 21/08/2020.
//  Copyright © 2020 Chris Eadie Designs. All rights reserved.
//

import Foundation

struct Result: Codable {
    let query: Query
}

struct Query: Codable {
    let pages: [Int: Page]
}

struct Page: Codable {
    let pageid: Int
    let title: String
    let terms: [String: [String]]?
}
