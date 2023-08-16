//
//  ContentView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Maliks on 15/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playStatus : String = "Not Playing"
    @State private var isPlaying: Bool = false
    @State private var toggleIsOn : Bool = false
    
    @ObservedObject private var review: Review = Review()
    @ObservedObject private var likes : Likes = Likes()
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    Spacer()
                    Image(systemName: "music.note")
                        .resizable()
                        .frame(width: 300, height: 300, alignment: .topLeading)
                        .background(Color.gray.opacity(0.5))
                        .cornerRadius(15.0)
                    
                    Text(self.playStatus)
                        .font(.title)
                        .frame(maxWidth: 350)
                        .padding(30)
                    
                    HStack(alignment: .center, spacing: 70) {
                        
                        Button(action: {
                            debugPrint("Backward Button Tapped")
                        }){
                            Image(systemName: "backward")
                                .resizable()
                                .frame(width: 60, height: 60, alignment: .center)
                                .foregroundColor(toggleIsOn ? .green : .accentColor)
                        }
                        
                        Button(action: {
                            self.isPlaying.toggle()
                            self.playStatus = self.isPlaying ? "Playing" : "Not Playing"
                        }){
                            Image(systemName: self.isPlaying ? "pause" : "play")
                                .resizable()
                                .frame(width: 60, height: 60, alignment: .center)
                                .foregroundColor(toggleIsOn ? .green : .accentColor)
                        }
                        
                        Button(action: {
                            debugPrint("Forward Button Tapped")
                        }){
                            Image(systemName: "forward")
                                .resizable()
                                .frame(width: 60, height: 60, alignment: .center)
                                .foregroundColor(toggleIsOn ? .green : .accentColor)
                        }
                        
                    }
                    
                    HStack {
                        ToggleChildView(isOn: $toggleIsOn)
                        Spacer(minLength: 0)
                    }.padding()
                    
                    Text("Entered Review: \(review.reviewText)")
                        .font(.title2)
                    
                    TextField("Review", text: $review.reviewText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    NavigationLink("Reviews", destination: ReviewChildView())
                }
            }
        }.environmentObject(review)
            .environmentObject(likes)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
