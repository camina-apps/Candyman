import Foundation

extension URLComponents {
    
    init(_ string: StaticString) {
        self.init(string: "\(string)")!
    }
    
    mutating func appendPath(_ path: String) {
        if (path.first == "/") {
            self.path = self.path + path
        } else {
            self.path = self.path + "/" + path
        }
    }
}
