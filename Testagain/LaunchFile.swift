//
//  LaunchFile.swift
//  Testagain
//
//  Created by Hector Rios on 2/25/24.
//

import Foundation
import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.0
    @State private var opacity = 0.0
    
    
    var body : some View {
        VStack{
            VStack{
                Image(systemName: "globe")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .foregroundColor(.blue)
                                .padding()
                            
                            Text("MeowMatch")
                                .font(.title)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.2)){
                    
                    self.size = 0.9
                    self.opacity = 1.0
                }
            }
        }
    }
}
#Preview {
    SplashScreenView()
    
}

