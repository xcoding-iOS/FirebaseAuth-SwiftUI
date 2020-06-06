//
//  SignupView.swift
//  FirebaseAuthSwiftUI
//
//  Created by Giuseppe Sapienza on 6/6/20.
//  Copyright © 2020 Giuseppe Sapienza. All rights reserved.
//

import SwiftUI

struct SignupView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var repeatPassword: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("🏋️‍♀️ Awesome,")
                .font(.title)
            Text("Set your account for FREE in a few steps")
                .padding(.bottom, 20)
            
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            SecureField("Repeat Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 10)
            
            Button(action: {
                // login
            }, label: {
                Text("Signup")
                    .accentColor(Color.white)
                    .padding([.trailing, .leading], 26)
                    .padding([.top, .bottom], 8)
            })
                .background(Color.black)
                .cornerRadius(20)
            
            Spacer()

        }
        .padding()
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
