//
// ChannelProductChangesResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChannelProductChangesResponse: Codable {

    public var toBeCreated: [ChannelProductResponse]?
    public var toBeUpdated: [ChannelProductResponse]?
    public var toBeRemoved: [String]?


    public enum CodingKeys: String, CodingKey { 
        case toBeCreated = "ToBeCreated"
        case toBeUpdated = "ToBeUpdated"
        case toBeRemoved = "ToBeRemoved"
    }


}
