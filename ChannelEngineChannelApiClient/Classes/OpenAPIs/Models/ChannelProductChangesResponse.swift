//
// ChannelProductChangesResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChannelProductChangesResponse: Codable, Hashable {

    public var toBeCreated: [ChannelProductResponse]?
    public var toBeUpdated: [ChannelProductResponse]?
    public var toBeRemoved: [String]?

    public init(toBeCreated: [ChannelProductResponse]? = nil, toBeUpdated: [ChannelProductResponse]? = nil, toBeRemoved: [String]? = nil) {
        self.toBeCreated = toBeCreated
        self.toBeUpdated = toBeUpdated
        self.toBeRemoved = toBeRemoved
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case toBeCreated = "ToBeCreated"
        case toBeUpdated = "ToBeUpdated"
        case toBeRemoved = "ToBeRemoved"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(toBeCreated, forKey: .toBeCreated)
        try container.encodeIfPresent(toBeUpdated, forKey: .toBeUpdated)
        try container.encodeIfPresent(toBeRemoved, forKey: .toBeRemoved)
    }
}

