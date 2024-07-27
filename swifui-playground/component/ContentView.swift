//
//  ContentView.swift
//  swifui-playground
//
//  Created by 최낙수 on 7/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("VStack Item 1")
            Text("VStack Item 2")
            Divider()
                .background(.black)
            Spacer()
            Text("VStack Item 3")

            HStack {
                Text("HStack Item1")
                Divider()
                    .background(.black)
                Text("HStack Item2")
                Divider()
                    .background(.black)
                Spacer()
                Text("HStack Item3")
            }
            .background(.red)
            ZStack {
                Text("ZStack Item 1")
                    .padding()
                    .background(.green)
                    .opacity(0.8)
                Text("ZStack Item 2")
                    .padding()
                    .background(.green)
                    .offset(x: 80, y: -400)
            }
            
        }
        .background(.blue)
    }
}

#Preview {
    ContentView()
}
