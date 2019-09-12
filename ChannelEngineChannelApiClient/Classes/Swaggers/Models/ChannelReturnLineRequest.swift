//
// ChannelReturnLineRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChannelReturnLineRequest: Codable {

    /** The unique product reference used by the Channel */
    public var channelProductNo: String
    /** Number of items of the product in this return */
    public var quantity: Int

    public init(channelProductNo: String, quantity: Int) {
        self.channelProductNo = channelProductNo
        self.quantity = quantity
    }

    public enum CodingKeys: String, CodingKey { 
        case channelProductNo = "ChannelProductNo"
        case quantity = "Quantity"
    }


}

