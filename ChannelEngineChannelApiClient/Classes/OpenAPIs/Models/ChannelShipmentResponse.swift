//
// ChannelShipmentResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ChannelShipmentResponse: Codable, Hashable {

    /** The unique order reference used by the Channel. */
    public var channelOrderNo: String
    public var lines: [ChannelShipmentLineResponse]
    /** The date at which the shipment was created in ChannelEngine. */
    public var createdAt: Date?
    /** The date at which the shipment was last modified in ChannelEngine. */
    public var updatedAt: Date?
    /** Extra data on the order. Each item must have an unqiue key */
    public var extraData: [String: String]?
    /** The unique shipping reference used by the Shipping carrier (track&amp;trace number). */
    public var trackTraceNo: String?
    /** A link to a page of the carrier where the customer can track the shipping of her package. */
    public var trackTraceUrl: String?
    /** The unique return shipping reference that may be used by the Shipping carrier (track &amp; trace number) if the shipment is returned. */
    public var returnTrackTraceNo: String?
    /** Shipment method: the carrier used for shipping the package. E.g. DHL, postNL. */
    public var method: String?
    /** The code of the country from where the package is being shipped. */
    public var shippedFromCountryCode: String?

    public init(channelOrderNo: String, lines: [ChannelShipmentLineResponse], createdAt: Date? = nil, updatedAt: Date? = nil, extraData: [String: String]? = nil, trackTraceNo: String? = nil, trackTraceUrl: String? = nil, returnTrackTraceNo: String? = nil, method: String? = nil, shippedFromCountryCode: String? = nil) {
        self.channelOrderNo = channelOrderNo
        self.lines = lines
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.extraData = extraData
        self.trackTraceNo = trackTraceNo
        self.trackTraceUrl = trackTraceUrl
        self.returnTrackTraceNo = returnTrackTraceNo
        self.method = method
        self.shippedFromCountryCode = shippedFromCountryCode
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case channelOrderNo = "ChannelOrderNo"
        case lines = "Lines"
        case createdAt = "CreatedAt"
        case updatedAt = "UpdatedAt"
        case extraData = "ExtraData"
        case trackTraceNo = "TrackTraceNo"
        case trackTraceUrl = "TrackTraceUrl"
        case returnTrackTraceNo = "ReturnTrackTraceNo"
        case method = "Method"
        case shippedFromCountryCode = "ShippedFromCountryCode"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(channelOrderNo, forKey: .channelOrderNo)
        try container.encode(lines, forKey: .lines)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(extraData, forKey: .extraData)
        try container.encodeIfPresent(trackTraceNo, forKey: .trackTraceNo)
        try container.encodeIfPresent(trackTraceUrl, forKey: .trackTraceUrl)
        try container.encodeIfPresent(returnTrackTraceNo, forKey: .returnTrackTraceNo)
        try container.encodeIfPresent(method, forKey: .method)
        try container.encodeIfPresent(shippedFromCountryCode, forKey: .shippedFromCountryCode)
    }



}
