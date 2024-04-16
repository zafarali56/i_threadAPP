//
//  LoginView.swift
//  iThreads
//
//  Created by Zafar Ali on 16/04/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("threads-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                VStack {
                    TextField("Your Email", text: $email)
                        .padding(12)
                        .font(.subheadline)
                        .background(Color(.systemGray6))
                        .clipShape(Capsule())
                        .padding(.horizontal, 24)
                    SecureField("Your Password" ,text: $password)
                        .padding(12)
                        .font(.subheadline)
                        .background(Color(.systemGray6))
                        .clipShape(Capsule())
                        .padding(.horizontal, 24)
                    
                }

                
                NavigationLink {
                    Text("Forgot password?")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundStyle(.black)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                        
                }
                Button{
                    
                } label: {
                    Text ("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .clipShape(.capsule)
                }
                Spacer()
                

                
                NavigationLink {
                    Text ("SIGN UP")
                } label: {
                    HStack (spacing: 3) {
                        Text ("Dont have an account? ")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }.foregroundColor(.black)
                        .font(.footnote)
                    
                }.padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
