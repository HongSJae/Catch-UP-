import Foundation
import Moya

public enum UsersAPI {
    case login(id: String, password: String)
}

extension UsersAPI: JobisAPI {
    public typealias ErrorType = Error

    public var domain: JobisDomain {
        .users
    }

    public var urlPath: String {
        switch self {
        case .login:
            return "/login"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .login:
            return .post
        }
    }

    public var task: Moya.Task {
        switch self {
        case let .login(id, password):
            return .requestParameters(parameters: [
                "account_id": id,
                "password": password,
                "platform_type": "IOS"
            ], encoding: URLEncoding.httpBody)
        }
    }

    public var jwtTokenType: JwtTokenType {
        .none
    }

    public var errorMap: [Int : ErrorType] {
        [:]
    }
}
