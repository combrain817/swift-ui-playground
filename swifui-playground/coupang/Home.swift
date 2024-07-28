//
//  Home.swift
//  swifui-playground
//
//  Created by 최낙수 on 7/28/24.
//

import SwiftUI

struct HomeUI : View {
    @State var searchValue: String
    
    let images: [Item] = [
        Item(name: "1", image: "1"),
        Item(name: "2", image: "2"),
        Item(name: "3", image: "3"),
        Item(name: "4", image: "4"),
        Item(name: "5", image: "5"),
    ]
    
    var body: some View {
        VStack {
            HStack {
                Image("CoupangLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 30)
                    .padding(.leading, 100)
                Spacer().frame(width: 80)
                Image(systemName: "bell")
            }
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading, 20)
                TextField(
                    "쿠팡에서 검색하세요!",
                    text: $searchValue
                )
                .frame(width: 350, height: 50)
            }
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            .padding(10)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(images) {
                        image in Image(image.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: .infinity, height: 100)
                    }
                }
                
            }.frame(height: 200)
                .safeAreaPadding(.horizontal, 32)
                .scrollClipDisabled()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}


struct Item: Hashable, Identifiable {
    var id: Self {self}
    
    let name: String
    let image: String
}

#Preview {
    HomeUI(searchValue: "")
}
