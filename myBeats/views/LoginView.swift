//
//  LoginView.swift
//  myBeats
//
//  Created by Alumno on 27/10/22.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                VStack{
                    
                    LottieView(name: "home", loopMode: .loop)
                                .frame(width: 150, height: 150)
                    Text("Ingresar")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Correo", text:  $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    SecureField("Contraseña", text:  $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Iniciar Sesión") {
                        authenticateUser(username: email, password: password)
                        
                    }
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
                    
                    NavigationLink(destination: Text("You are logged in @\(email)"), isActive: $showingLoginScreen){
                        EmptyView()
                    }
                    
                    NavigationLink {
                        RegisterView()
                    } label: {
                        Text("Registrarse")
                            .padding()
                    }

                        
                        
                }
            }
            .navigationBarHidden(true)
        }
    }
    func authenticateUser(username: String, password: String){
        if username.lowercased() == "alicia2022" {
            wrongUsername = 0
            if password.lowercased() == "123"{
                wrongPassword = 0
                showingLoginScreen = true
            }else {
                wrongPassword = 2
            }
        } else{
            wrongUsername = 2
        }
    }
}

    



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LoginView()

        }
    }
}
