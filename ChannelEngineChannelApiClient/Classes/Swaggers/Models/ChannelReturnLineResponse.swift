//
// ChannelReturnLineResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChannelReturnLineResponse: Codable {

    public var channelProductNo: String
    public var quantity: Int


    public enum CodingKeys: String, CodingKey { 
        case channelProductNo = "ChannelProductNo"
        case quantity = "Quantity"
    }


}
