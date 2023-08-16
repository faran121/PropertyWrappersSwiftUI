//
//  ToggleChildView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Maliks on 16/08/2023.
//

import SwiftUI

struct ToggleChildView: View {
    @Binding var isOn : Bool
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text("Loop")
            }).fixedSize()
        }
    }
}

struct ToggleChildView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleChildView(isOn: .constant(false))
    }
}
