import Foundation

public struct Launch: Hashable, Sendable {
    public let id: String
    public let url: String
    public let launchLibraryId: Int?
    public let slug: String
    public let name: String
    public let status: Status
    public let net: String
    public let windowEnd: String
    public let windowStart: String
    public let inHold: Bool
    public let tbdTime: Bool
    public let tbdDate: Bool
    public let probability: Int?
    public let holdReason: String
    public let failReason: String
    public let hashtag: String?
    public let launchServiceProvider: LaunchServiceProvider
    public let rocket: Rocket
    public let mission: Mission?
    public let pad: Pad
    public let webcastLive: Bool
    public let image: String?
    public let infographic: String?
    public let program: [Program]
    
    public init(
        id: String,
        url: String,
        launchLibraryId: Int?,
        slug: String,
        name: String,
        status: Status,
        net: String,
        windowEnd: String,
        windowStart: String,
        inHold: Bool,
        tbdTime: Bool,
        tbdDate: Bool,
        probability: Int?,
        holdReason: String,
        failReason: String,
        hashtag: String?,
        launchServiceProvider: LaunchServiceProvider,
        rocket: Rocket,
        mission: Mission?,
        pad: Pad,
        webcastLive: Bool,
        image: String?,
        infographic: String?,
        program: [Program]
    ) {
        self.id = id
        self.url = url
        self.launchLibraryId = launchLibraryId
        self.slug = slug
        self.name = name
        self.status = status
        self.net = net
        self.windowEnd = windowEnd
        self.windowStart = windowStart
        self.inHold = inHold
        self.tbdTime = tbdTime
        self.tbdDate = tbdDate
        self.probability = probability
        self.holdReason = holdReason
        self.failReason = failReason
        self.hashtag = hashtag
        self.launchServiceProvider = launchServiceProvider
        self.rocket = rocket
        self.mission = mission
        self.pad = pad
        self.webcastLive = webcastLive
        self.image = image
        self.infographic = infographic
        self.program = program
    }
}

