//
//  BOOK.swift
//  libary
//
//  Created by faten aldosari on 04/03/2024.
//

import Foundation
struct Book: Codable {
    let id: Int
    let title: String
    let description: String
    let price: Double
    let image: String
}
