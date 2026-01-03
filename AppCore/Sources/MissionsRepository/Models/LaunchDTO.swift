import Foundation

public struct LaunchDTO: Codable, Sendable {
    public let id: String
    public let url: String
    public let launchLibraryId: Int?
    public let slug: String
    public let name: String
    public let status: StatusDTO
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
    public let launchServiceProvider: LaunchServiceProviderDTO
    public let rocket: RocketDTO
    public let mission: MissionDTO?
    public let pad: PadDTO
    public let webcastLive: Bool
    public let image: String?
    public let infographic: String?
    public let program: [ProgramDTO]
    
    enum CodingKeys: String, CodingKey {
        case id
        case url
        case launchLibraryId = "launch_library_id"
        case slug
        case name
        case status
        case net
        case windowEnd = "window_end"
        case windowStart = "window_start"
        case inHold = "inhold"
        case tbdTime = "tbdtime"
        case tbdDate = "tbddate"
        case probability
        case holdReason = "holdreason"
        case failReason = "failreason"
        case hashtag
        case launchServiceProvider = "launch_service_provider"
        case rocket
        case mission
        case pad
        case webcastLive = "webcast_live"
        case image
        case infographic
        case program
    }
    
    public init(
        id: String,
        url: String,
        launchLibraryId: Int?,
        slug: String,
        name: String,
        status: StatusDTO,
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
        launchServiceProvider: LaunchServiceProviderDTO,
        rocket: RocketDTO,
        mission: MissionDTO?,
        pad: PadDTO,
        webcastLive: Bool,
        image: String?,
        infographic: String?,
        program: [ProgramDTO]
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

