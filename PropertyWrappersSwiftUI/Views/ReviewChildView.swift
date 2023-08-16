//
//  ReviewChildView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Maliks on 16/08/2023.
//

import SwiftUI

struct ReviewChildView: View {
    @EnvironmentObject var review: Review
    @EnvironmentObject var likes: Likes
    
    var body: some View {
        VStack {
            Text("Review: \(review.reviewText)")
            
            Stepper("Likes: \(likes.likes)", value: $likes.likes)
            
            NavigationLink("Number of Likes", destination: LikesChildView()).padding()
        }.padding()
    }
}

struct ReviewChildView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewChildView().environmentObject(Review())
            .environmentObject(Likes())
    }
}
