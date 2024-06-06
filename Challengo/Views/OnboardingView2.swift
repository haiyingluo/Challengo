//
//  OnboardingView2.swift
//  Challengo
//
//  Created by Haiying on 06/06/2024.
//

import SwiftUI

struct OnboardingView2: View {
    @State private var navigateToStartView = false
    @State private var navigateToOnboardingView3 = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("ChallenGo")
                    .font(.title3)
                    .fontWeight(.semibold)
                ZStack {
                    Image("Onbording background")
                        .offset(x: -120)
                        .frame(height: 250)
                    Image("Onbording 2")
                        .offset(y: -50)
                }
                .padding(.top, 80)
                Image("State 2")
                    .padding(.bottom, 15)
                Text("Défis quotidiens")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.bottom, 25)
                JustifiedTextView(text: "Chaque jour, vous recevrez un nouveau défi conçu pour vous aider à grandir. Des exercices de pleine conscience aux astuces de productivité, chaque défi est conçu pour faire de vous une meilleure version de vous-même.")
                    .frame(height: 140)
                    .padding(.horizontal, 30)
                JustifiedTextView(text: "Restez constant : Relevez des défis quotidiennement pour construire des habitudes durables")
                    .padding(.horizontal, 30)
                Spacer()
                HStack(spacing: 200) {
                    Button(action: {
                        navigateToStartView = true
                    }, label: {
                        Text("Skip")
                            .fontWeight(.semibold)
                            .foregroundColor(.colorRose)
                    })
                    Button(action: {
                        navigateToOnboardingView3 = true
                    }, label: {
                        Text("Next")
                            .padding(.horizontal, 25)
                            .padding(.vertical, 10)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .background(Color(.colorRose))
                            .cornerRadius(10)
                    })
                }
            }
            .navigationDestination(isPresented: $navigateToStartView) {
                StartView()
                .navigationBarBackButtonHidden(true)
            }
            .navigationDestination(isPresented: $navigateToOnboardingView3) {
                OnboardingView2()
            }
            .navigationBarHidden(true)
        }
    }
}



#Preview {
    OnboardingView2()
}