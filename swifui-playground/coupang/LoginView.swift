//
//  LoginView.swift
//  swifui-playground
//
//  Created by 최낙수 on 7/28/24.
//

import SwiftUI

struct LoginView: View {
    @State var username: String
    @State var password: String
    @State var isAutoLogin: Bool
    var body: some View {
        VStack {
            Image("CoupangLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 80)
            
            
            HStack {
                Text("이메일")
                    .frame(width: 100, alignment: .leading)
                    .background(Color.red)
                TextField(text: $username,
                          prompt: Text("email@example.com")
                    .foregroundStyle(.gray)) {
                    Text("Username")
                }
                
            }
            .frame(width: 300, height: 30)
            
            HStack {
                Text("비밀번호")
                    .frame(width: 100, alignment: .leading)
                    .background(Color.red)
                SecureField(text: $password) {
                    Text("Password")
                }
            }
            .frame(width: 300, height: 30)
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                       label: {
                    Text("로그인")
                        .frame(width: 300, height: 50)
                        .background(Color(red:0, green: 140, blue: 255))
                        .foregroundStyle(Color.white)
                })
                .foregroundStyle(Color.white)
            }
            
            HStack {
                Text("아이디/비밀번호 찾기>").foregroundStyle(.blue)
            }
            Divider().background(.black)
            Button {} label: {
                Text("회원가입")
                    .frame(width: 300, height: 40)
                    .background(Color(.red))
            }

        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .top)
        .background(Color(red: 238, green: 238, blue: 238))
        
        
    }
}

#Preview {
    LoginView(username: "", password: "qwer", isAutoLogin: true)
}
