import Foundation
import MissionsRepository

public struct MissionUseCase: MissionsUseCaseProtocol {
    // MARK: - Private properties
    private let missionsRepository: MissionsRepositoryProtocol

    // MARK: - Init
    public init(missionsRepository: MissionsRepositoryProtocol) {
        self.missionsRepository = missionsRepository
    }

    // MARK: - MissionsUseCaseProtocol
    public func fetchMissions() async throws -> [Launch] {
        // TODO: Instead of having limit and offset as a hardcoded number these needed to come from actor.
        let missionsDto = try await missionsRepository.fetchMissions(limit: 10, offset: 10)
        return mapToLaunch(missionsDto)
    }

    // MARK: - Private Methods
    private func mapToLaunch(_ launchesResponseDTO: LaunchesResponseDTO) -> [Launch] {
        launchesResponseDTO.results.map { launchDto in
            Launch(
                id: launchDto.id,
                url: launchDto.url,
                launchLibraryId: launchDto.launchLibraryId,
                slug: launchDto.slug,
                name: launchDto.name,
                status: mapToStatus(launchDto.status),
                net: launchDto.net,
                windowEnd: launchDto.windowEnd,
                windowStart: launchDto.windowStart,
                inHold: launchDto.inHold,
                tbdTime: launchDto.tbdTime,
                tbdDate: launchDto.tbdDate,
                probability: launchDto.probability,
                holdReason: launchDto.holdReason,
                failReason: launchDto.failReason,
                hashtag: launchDto.hashtag,
                launchServiceProvider: mapToLaunchServiceProvider(launchDto.launchServiceProvider),
                rocket: mapToRocket(launchDto.rocket),
                mission: launchDto.mission.map { mapToMission($0) },
                pad: mapToPad(launchDto.pad),
                webcastLive: launchDto.webcastLive,
                image: launchDto.image,
                infographic: launchDto.infographic,
                program: launchDto.program.map { mapToProgram($0) }
            )
        }
    }
    
    private func mapToStatus(_ dto: StatusDTO) -> Status {
        Status(
            id: dto.id,
            name: dto.name
        )
    }
    
    private func mapToLaunchServiceProvider(_ dto: LaunchServiceProviderDTO) -> LaunchServiceProvider {
        LaunchServiceProvider(
            id: dto.id,
            url: dto.url,
            name: dto.name,
            type: dto.type
        )
    }
    
    private func mapToRocket(_ dto: RocketDTO) -> Rocket {
        Rocket(
            id: dto.id,
            configuration: mapToRocketConfiguration(dto.configuration)
        )
    }
    
    private func mapToRocketConfiguration(_ dto: RocketConfigurationDTO) -> RocketConfiguration {
        RocketConfiguration(
            id: dto.id,
            launchLibraryId: dto.launchLibraryId,
            url: dto.url,
            name: dto.name,
            family: dto.family,
            fullName: dto.fullName,
            variant: dto.variant
        )
    }
    
    private func mapToMission(_ dto: MissionDTO) -> Mission {
        Mission(
            id: dto.id,
            launchLibraryId: dto.launchLibraryId,
            name: dto.name,
            description: dto.description,
            launchDesignator: dto.launchDesignator,
            type: dto.type,
            orbit: dto.orbit.map { mapToOrbit($0) }
        )
    }
    
    private func mapToOrbit(_ dto: OrbitDTO) -> Orbit {
        Orbit(
            id: dto.id,
            name: dto.name,
            abbrev: dto.abbrev
        )
    }
    
    private func mapToPad(_ dto: PadDTO) -> Pad {
        Pad(
            id: dto.id,
            url: dto.url,
            agencyId: dto.agencyId,
            name: dto.name,
            infoUrl: dto.infoUrl,
            wikiUrl: dto.wikiUrl,
            mapUrl: dto.mapUrl,
            latitude: dto.latitude,
            longitude: dto.longitude,
            location: mapToLocation(dto.location),
            mapImage: dto.mapImage,
            totalLaunchCount: dto.totalLaunchCount
        )
    }
    
    private func mapToLocation(_ dto: LocationDTO) -> Location {
        Location(
            id: dto.id,
            url: dto.url,
            name: dto.name,
            countryCode: dto.countryCode,
            mapImage: dto.mapImage,
            totalLaunchCount: dto.totalLaunchCount,
            totalLandingCount: dto.totalLandingCount
        )
    }
    
    private func mapToProgram(_ dto: ProgramDTO) -> Program {
        Program(
            id: dto.id,
            url: dto.url,
            name: dto.name,
            description: dto.description,
            agencies: dto.agencies.map { mapToAgency($0) },
            imageUrl: dto.imageUrl,
            startDate: dto.startDate,
            endDate: dto.endDate,
            infoUrl: dto.infoUrl,
            wikiUrl: dto.wikiUrl
        )
    }
    
    private func mapToAgency(_ dto: AgencyDTO) -> Agency {
        Agency(
            id: dto.id,
            url: dto.url,
            name: dto.name,
            type: dto.type
        )
    }
}
