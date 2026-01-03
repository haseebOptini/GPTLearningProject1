import Foundation

public struct Program: Hashable, Sendable {
    public let id: Int
    public let url: String
    public let name: String
    public let description: String
    public let agencies: [Agency]
    public let imageUrl: String?
    public let startDate: String?
    public let endDate: String?
    public let infoUrl: String?
    public let wikiUrl: String?
    
    public init(
        id: Int,
        url: String,
        name: String,
        description: String,
        agencies: [Agency],
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

