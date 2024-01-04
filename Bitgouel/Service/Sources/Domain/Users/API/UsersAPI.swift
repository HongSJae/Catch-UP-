import Foundation
import Moya

public enum UsersAPI {
    case login(LoginRequestDTO)
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
        case let .login(req):
            return .requestJSONEncodable(req)
        }
    }

    public var jwtTokenType: JwtTokenType {
        .none
    }

    public var errorMap: [Int : ErrorType] {
        [:]
    }
}
