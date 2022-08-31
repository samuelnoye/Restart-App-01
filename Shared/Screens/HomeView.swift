//
//  HomeView.swift
//  Restart-App-01 (iOS)
//
//  Created by Samuel Noye on 06/12/2021.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    //MARK:- BODY
    
    
    var body: some View {
        VStack(spacing:20){
            Text("Home")
                .font(.largeTitle)
          //  Button(action:{
            isOnboardingViewActive = true
            }){ 
                Text("Restart")
            }
        }//: VStack
    
}
    //MARK:-
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
