import Foundation

public protocol LoginUseCase {
    func callAsFunction(id: String, password: String) async throws
}
