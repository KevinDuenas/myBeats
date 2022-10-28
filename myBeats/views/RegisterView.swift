//
//  RegisterView.swift
//  myBeats
//
//  Created by Alumno on 27/10/22.
//

import SwiftUI

struct RegisterView: View {
    
    
    @Environment(\.dismiss) private var dismiss
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var email = ""
    @State private var WrongEmail = 0
    @State private var fullName = ""
    
    
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
                    Text("Registrarse")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    Label("El correo ya existe.", systemImage: "x.circle.fill")
                        .bold()
                        .font(.subheadline)
                        .foregroundColor(.red)
                    
                    
                    TextField("Nombre completo", text:  $fullName)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    TextField("Correo", text:  $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(WrongEmail))
                    
                    
                    SecureField("Contraseña", text:  $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Registrarme") {
                        //authenticateUser(username: username, password: password)
                    }
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
                    
                    NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen){
                        EmptyView()
                    }
                    
                    
                    Button {
                        dismiss()
                    } label: {
                        Text("Ya tengo cuenta")
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


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            RegisterView()
        }
    }
}
