//
//  LoginView.swift
//  ToDoList
//
//  Created by Erik on 4/5/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView()
            
            // Login form
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button() {
                    // Attemp log in
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        
                        Text("Log In")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                }
            }
            
            // Create account
            VStack {
                Text("New around here?")
                
                NavigationLink("Create An Account", destination: RegisterView())
            }
            .padding(.bottom, 50)
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
