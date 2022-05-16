//
// CollectionChangesOfChannelProductChangesResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CollectionChangesOfChannelProductChangesResponse: Codable, Hashable {

    public var content: ChannelProductChangesResponse?
    public var toBeCreatedTotalCount: Int?
    public var toBeUpdatedTotalCount: Int?
    public var toBeDeletedTotalCount: Int?
    public var statusCode: Int?
    public var requestId: String?
    public var logId: String?
    public var success: Bool?
    public var message: String?
    public var validationErrors: [String: [String]]?

    public init(content: ChannelProductChangesResponse? = nil, toBeCreatedTotalCount: Int? = nil, toBeUpdatedTotalCount: Int? = nil, toBeDeletedTotalCount: Int? = nil, statusCode: Int? = nil, requestId: String? = nil, logId: String? = nil, success: Bool? = nil, message: String? = nil, validationErrors: [String: [String]]? = nil) {
        self.content = content
        self.toBeCreatedTotalCount = toBeCreatedTotalCount
        self.toBeUpdatedTotalCount = toBeUpdatedTotalCount
        self.toBeDeletedTotalCount = toBeDeletedTotalCount
        self.statusCode = statusCode
        self.requestId = requestId
        self.logId = logId
        self.success = success
        self.message = message
        self.validationErrors = validationErrors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case content = "Content"
        case toBeCreatedTotalCount = "ToBeCreatedTotalCount"
        case toBeUpdatedTotalCount = "ToBeUpdatedTotalCount"
        case toBeDeletedTotalCount = "ToBeDeletedTotalCount"
        case statusCode = "StatusCode"
        case requestId = "RequestId"
        case logId = "LogId"
        case success = "Success"
        case message = "Message"
        case validationErrors = "ValidationErrors"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(toBeCreatedTotalCount, forKey: .toBeCreatedTotalCount)
        try container.encodeIfPresent(toBeUpdatedTotalCount, forKey: .toBeUpdatedTotalCount)
        try container.encodeIfPresent(toBeDeletedTotalCount, forKey: .toBeDeletedTotalCount)
        try container.encodeIfPresent(statusCode, forKey: .statusCode)
        try container.encodeIfPresent(requestId, forKey: .requestId)
        try container.encodeIfPresent(logId, forKey: .logId)
        try container.encodeIfPresent(success, forKey: .success)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(validationErrors, forKey: .validationErrors)
    }
}

