//
//  Review.swift
//  PropertyWrappersSwiftUI
//
//  Created by Maliks on 16/08/2023.
//

import Foundation

class Review: ObservableObject {
    @Published var reviewText: String = String()
}

class Likes: ObservableObject {
    @Published var likes: Int = 0
}
