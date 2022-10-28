//
//  MainView.swift
//  myBeats
//
//  Created by Mario on 28/10/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                TabView {
                    PetDetailView(image: "1", name: "Hueso Oscuro", color: "c1")
                    PetDetailView(image: "2", name: "Bola de Algodon", color: "c2")
                    Button {
                        
                    } label: {
                        GeometryReader { geo in
                            ZStack {
                                VStack {
                                    Image(systemName: "plus")
                                        .resizable().frame(width: 64, height: 64).foregroundColor(.white)
                                    
                                    Text("Agregar").foregroundColor(.white).font(.title)
                                }
                                
                            }
                            .frame(width: geo.size.width, height: geo.size.height)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .background(LinearGradient(colors: [.cyan.opacity(0.1), .cyan.opacity(0.9)], startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle())
            }
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.all)
            .safeAreaInset(edge: .top) {
                HStack {
                    Text("Petty")
                        .font(.system(size: 42))
                        .fontWeight(.bold)
                    Spacer()
                    
                    NavigationLink {
                        Text("asfasd")
                    } label: {
                        Image(systemName: "person.crop.circle").resizable().frame(width: 32, height: 32)
                    }
                    
                    
                }
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.bottom, 5)
                .background(LinearGradient(colors: [.clear.opacity(0.3), .clear.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .overlay(.thinMaterial)
                )
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
