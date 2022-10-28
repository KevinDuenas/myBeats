//
//  PetDetailView.swift
//  myBeats
//
//  Created by Mario on 28/10/22.
//

import SwiftUI
import CrookedText

struct PetDetailView: View {
    var image: String
    var name: String
    var color: String
    
    var body: some View {
        ZStack {
            Color(color)
            
            
            VStack {
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                    .overlay {
                        CrookedText(text: name, radius: 270)
                            .font(.largeTitle)
                            .offset(y: 60)
                            .fontWeight(.semibold)
                            .tracking(5)
                    }.padding(.top, 60)
                Spacer()
               
                
                
                
            }
            .padding(.horizontal)
            .padding(.top, 140)
            
        }
        
    }
}

struct PetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PetDetailView(image: "1", name: "Shiva", color: "c1")
    }
}
