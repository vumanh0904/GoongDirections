import Foundation

@available(*, deprecated, renamed: "DirectionsProfileIdentifier")
public typealias MBDirectionsProfileIdentifier = DirectionsProfileIdentifier

/**
 Options determining the primary mode of transportation for the routes.
 */
public struct DirectionsProfileIdentifier: Codable, Hashable, RawRepresentable {
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
    
    public var rawValue: String
    
    /**
    The returned directions are appropriate for driving or riding a car
    */
    public static let car: DirectionsProfileIdentifier = .init(rawValue: "car")
   
    /**
    The returned directions are appropriate for driving or riding a bike
    */
    public static let bike: DirectionsProfileIdentifier = .init(rawValue: "bike")
    
    /**
    The returned directions are appropriate for driving or riding a taxi
    */
    public static let taxi: DirectionsProfileIdentifier = .init(rawValue: "taxi")
    
    /**
    The returned directions are appropriate for driving or riding a truck
    */
    public static let truck: DirectionsProfileIdentifier = .init(rawValue: "truck")
  
}
