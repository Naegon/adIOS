import Foundation
// MARK: - Welcome
struct Schedule: Codable {
    var records: [Record]
}

// MARK: - Record
struct Record: Codable {
    var id: String
//    var fields: Fields
//    var createdTime: String
//    enum CodingKeys: String,CodingKey {
//        case id = "id"
//    }
}

// MARK: - Fields
struct Fields: Codable {
    var activity, start, type: String
    var speakerS: [String]?
    var location: String
    var notes: String?
    var end: String

    enum CodingKeys: String, CodingKey {
        case activity = "Activity"
        case start = "Start"
        case type = "Type"
        case speakerS = "Speaker(s)"
        case location = "Location"
        case notes = "Notes"
        case end = "End"
    }
}
