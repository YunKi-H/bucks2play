//
//  ResetPasswordView.swift
//  BallCalculator
//
//  Created by Yunki on 5/14/25.
//

import SwiftUI

struct ResetPasswordView: View {
    @State var password: String = ""
    @State var passwordCheck: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            TopBar(
                title: "비밀번호 재설정",
                back: {
                    
                })
            
            FormTextField(
                prompt: "8~20자 이내의 영문 + 숫자",
                text: $password,
                title: { Text("새 비밀번호") },
                rightIcon: { Image(.eye18) }
            )
            
            FormTextField(
                prompt: "새 비밀번호 재입력",
                text: $passwordCheck,
                title: { Text("새 비밀번호 확인") },
                rightIcon: { Image(.eye18) }
            )
            
            BasicButton("비밀번호 변경하기", type: .primary, isEnabled: true) {
                
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 16)
            
            Spacer()
        }
    }
}

#Preview {
    ResetPasswordView()
}
