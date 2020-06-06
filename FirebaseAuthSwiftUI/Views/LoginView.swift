//
//  LoginView.swift
//  FirebaseAuthSwiftUI
//
//  Created by Giuseppe Sapienza on 6/6/20.
//  Copyright © 2020 Giuseppe Sapienza. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var isSignup: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("👋 Welcome,")
                .font(.title)
            Text("Please login using your email and password")
                .padding(.bottom, 20)
            
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 10)
            
            Button(action: {
                // login
            }, label: {
                Text("Login")
                    .accentColor(Color.white)
                    .padding([.trailing, .leading], 26)
                    .padding([.top, .bottom], 8)
            })
            .background(Color.black)
                .cornerRadius(20)
            
            Text("Don't have an account?")
                .font(.callout)
                .padding(.top, 20)
            
            Button(action: {
                self.isSignup.toggle()
            }, label: {
                Text("Signup now!")
                    .font(.callout)
            })
            
                
            Spacer()
         
        }
        .padding()
        .sheet(isPresented: $isSignup, content: {
            SignupView()
        })
    }
    

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
