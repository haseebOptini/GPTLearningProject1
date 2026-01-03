import Foundation

public struct ProgramDTO: Codable, Sendable {
    public let id: Int
    public let url: String
    public let name: String
    public let description: String
    public let agencies: [AgencyDTO]
    public let imageUrl: String?
    public let startDate: String?
    public let endDate: String?
    public let infoUrl: String?
    public let wikiUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case url
        case name
        case description
        case agencies
        case imageUrl = "image_url"
        case startDate = "start_date"
        case endDate = "end_date"
        case infoUrl = "info_url"
        case wikiUrl = "wiki_url"
    }
    
    public init(
        id: Int,
        url: String,
        name: String,
        description: String,
        agencies: [AgencyDTO],
        imageUrl: String?,
        startDate: String?,
        endDate: String?,
        infoUrl: String?,
        wikiUrl: String?
    ) {
        self.id = id
        self.url = url
        self.name = name
        self.description = description
        self.agencies = agencies
        self.imageUrl = imageUrl
        self.startDate = startDate
        self.endDate = endDate
        self.infoUrl = infoUrl
        self.wikiUrl = wikiUrl
    }
}

