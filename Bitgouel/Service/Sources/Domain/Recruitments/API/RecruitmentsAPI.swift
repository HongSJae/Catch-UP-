import Foundation
import Moya

public enum RecruitmentsAPI {
    case fetchRecruitmentList
}

extension RecruitmentsAPI: JobisAPI {
    public typealias ErrorType = Error

    public var domain: JobisDomain {
        .recruitments
    }

    public var urlPath: String {
        switch self {
        case .fetchRecruitmentList:
            return "/student"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .fetchRecruitmentList:
            return .get
        }
    }

    public var task: Moya.Task {
        switch self {
        case .fetchRecruitmentList:
            return .requestParameters(parameters: [
                "page": 1
            ], encoding: URLEncoding.queryString)
        }
    }

    public var jwtTokenType: JwtTokenType {
        .accessToken
    }

    public var errorMap: [Int : ErrorType] {
        [:]
    }
}
