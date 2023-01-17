//
//  SplashScreenView.swift
//  GetWell
//
//  Created by Dai Fahad ALTamimi on 17/01/2023.
//

import SwiftUI

struct SplashScreenView: View {
    
        @State private var isSplashActive = true
        @State private var size = 1.0
        @State private var opacity = 0.5
        var body: some View {
            
            if isSplashActive {
                
                VStack {
                    ZStack{
                        Color("Color 2")
                            .edgesIgnoringSafeArea(.all)
                        VStack {
                            Image ("GetWell Logo")
                                .font (.system(size: 80))
                                . foregroundColor(.red)
                            
                            Image("GetWell Text")
                            
                        } .scaleEffect(size)
                            .opacity (opacity)
                            . onAppear {
                                withAnimation (.easeIn(duration: 1.2)) {
                                    self.size = 0.9
                                    self.opacity = 1.0
                                }
                            }
                    }
                    
                    
                    
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                            withAnimation {
                                self.isSplashActive = false
                            }
                        }
                        }
                        }
                    } else {
                        NavigationView {
                            ContentView()
                        }
                    }
                }
            }

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
