//
//  ContentView.swift
//  Restart
//
//  Created by Carlos Amaral on 14/11/21.
//

import SwiftUI

struct ContentView: View {
    
    //Quando o usuário entrar a primeira tela que ele vai ver é o onBoardingView
    @AppStorage("onboarding") var isOnboardingViewActive : Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
