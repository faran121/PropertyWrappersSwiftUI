//
//  LikesChildView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Maliks on 16/08/2023.
//

import SwiftUI

struct LikesChildView: View {
    
    @EnvironmentObject var likes : Likes
    
    var body: some View {
        Text("Number of Likes: \(likes.likes)")
    }
}

struct LikesChildView_Previews: PreviewProvider {
    static var previews: some View {
        LikesChildView()
            .environmentObject(Likes())
    }
}
