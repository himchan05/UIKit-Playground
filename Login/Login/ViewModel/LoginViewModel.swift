//
//  LoginViewModel.swift
//  Login
//
//  Created by 박힘찬 on 2023/06/02.
//

import RxSwift
import RxCocoa

class LoginViewModel {
    
    // MARK: - Inputs
    let email = BehaviorRelay<String>(value: "")
    let password = BehaviorRelay<String>(value: "")
    // MARK: - Outputs
    var isValid: Observable<Bool> {
        return Observable.combineLatest(email, password).map { email, password in
            print("Email : \(email), password: \(password)")
            return !email.isEmpty && email.contains("@") && email.contains(".") && password.count > 0
        }
    }
}
