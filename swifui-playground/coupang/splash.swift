//
//  splash.swift
//  swifui-playground
//
//  Created by 최낙수 on 7/28/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Image("CoupangLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 1000, height: 60)
        }
    }
}

#Preview {
    SplashView()
}
