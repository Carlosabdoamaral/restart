//
//  OnboardingView.swift
//  Restart
//
//  Created by Carlos Amaral on 14/11/21.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive : Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            Text("OnBoarding")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = false
            }) {
                Text("Start")
            }
        }
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
