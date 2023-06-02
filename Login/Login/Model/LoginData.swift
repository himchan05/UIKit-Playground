//
//  LoginData.swift
//  Login
//
//  Created by 박힘찬 on 2023/06/02.
//

import Foundation
import RxSwift

struct LoginData {
    let email: String
    let password: String
}

enum LoginError: Error {
    case invalidCredentials
}

class LoginAPI {
    static func login(email: String, password: String) -> Single<Result<Void, Error>> {
        // Call your login API here and return the result as a single
        return Single.just(.success(()))
    }
}
