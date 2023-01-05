//
//  ContextUIView.swift
//  Rocket-Elevators-Mobile-Swift
//
//  Created by Student on 1/4/23.
//

import SwiftUI

struct ContextUIView: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 10
        ) {
            ForEach(
                1...10,
                id: \.id
            ) {
                Text("Item \($0)")
            }
        }
    }
}

struct ContextUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContextUIView()
    }
}
