//
//  ContentView.swift
//  Rocket-Elevators-Mobile-Swift
//
//  Created by Student on 12/29/22.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.orange
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white)
                Circle()
                    .scale(1.35)
                
                VStack {
                    Text("Rocket Elevators")
                        .font(.largeTitle)
                        .colorInvert()
                        .padding()
                        .bold()
                    TextField("Username", text: $username)
                        .padding()
                        .colorInvert()
                        .frame(width: 300, height: 50)
                        .border(.white)
                        .border(.red, width: CGFloat(wrongUsername))
                        .cornerRadius(5)
                    SecureField("Password", text: $password)
                        .padding()
                        .colorInvert()
                        .frame(width: 300, height: 50)
                        .border(.white)
                        .border(.red, width: CGFloat(wrongPassword))
                        .cornerRadius(5)
                    
                    Button("Login") {
                        authenticateUser(username: username, passwoord: password)
                    }
                        .foregroundColor(.white)
                        .frame(width: 300, height:50)
                        .background(Color.orange)
                        .cornerRadius(5)
                    
                    NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen) {
                     EmptyView()
                    }
                }
            }
            .navigationBarHidden(true)
        }
       
    }
    func authenticateUser(username: String, passwoord: String){
        if username.lowercased() == "perk" {
            wrongUsername = 0
            if passwoord.lowercased() == "password" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
