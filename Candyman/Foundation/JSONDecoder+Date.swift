import Foundation


extension JSONDecoder.DateDecodingStrategy {
    
    static let customISO8601withFractionalSeconds = custom {
        let container = try $0.singleValueContainer()
        let string = try container.decode(String.self)
        let dateFormatter = ISO8601DateFormatter()
        dateFormatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        
        if let date = dateFormatter.date(from: string) {
            return date
        } else {
            throw DecodingError.dataCorruptedError(in: container, debugDescription: "Invalid date: \(string)")
        }
    }

}
