//
//  OnboardingView.swift
//  Restart-App-01 (iOS)
//
//  Created by Samuel Noye on 06/12/2021.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    //MARK:- BODY
    
    
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20){
                //MARK:- HEADER
                  Spacer()
                VStack(spacing: 0){
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Text("""
                     It's not how much we give but
                     how much love we put into giving.
                     """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                }
                
                //MARK:- CENTER
                ZStack{
                    ZStack{
                        Circle()
                            .stroke(.white.opacity(0.2),lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2),lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                    }
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                //MARK:- FOOTER

            }//: VStack
        }//: ZStack
    }
}
    //MARK:- PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
