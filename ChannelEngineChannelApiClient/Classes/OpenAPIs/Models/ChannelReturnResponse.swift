//
// ChannelReturnResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ChannelReturnResponse: Codable { 


    /** The unique return reference used by the Channel. */
    public var channelReturnNo: String
    /** The unique order reference used by the Channel. */
    public var channelOrderNo: String
    /** The unique order reference used by the Merchant (sku). */
    public var merchantOrderNo: String?
    public var lines: [ChannelReturnLineResponse]
    /** The date at which the return was created in ChannelEngine. */
    public var createdAt: Date?
    /** The date at which the return was last modified in ChannelEngine. */
    public var updatedAt: Date?
    /** The unique return reference used by ChannelEngine. */
    public var id: Int?
    public var reason: ReturnReason?
    /** Optional. Comment of customer on the (reason of) the return. */
    public var customerComment: String?
    /** Optional. Comment of merchant on the return. */
    public var merchantComment: String?
    /** Refund amount incl. VAT. */
    public var refundInclVat: Double?
    /** Refund amount excl. VAT. */
    public var refundExclVat: Double?

    public init(channelReturnNo: String, channelOrderNo: String, merchantOrderNo: String? = nil, lines: [ChannelReturnLineResponse], createdAt: Date? = nil, updatedAt: Date? = nil, id: Int? = nil, reason: ReturnReason? = nil, customerComment: String? = nil, merchantComment: String? = nil, refundInclVat: Double? = nil, refundExclVat: Double? = nil) {
        self.channelReturnNo = channelReturnNo
        self.channelOrderNo = channelOrderNo
        self.merchantOrderNo = merchantOrderNo
        self.lines = lines
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.id = id
        self.reason = reason
        self.customerComment = customerComment
        self.merchantComment = merchantComment
        self.refundInclVat = refundInclVat
        self.refundExclVat = refundExclVat
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case channelReturnNo = "ChannelReturnNo"
        case channelOrderNo = "ChannelOrderNo"
        case merchantOrderNo = "MerchantOrderNo"
        case lines = "Lines"
        case createdAt = "CreatedAt"
        case updatedAt = "UpdatedAt"
        case id = "Id"
        case reason = "Reason"
        case customerComment = "CustomerComment"
        case merchantComment = "MerchantComment"
        case refundInclVat = "RefundInclVat"
        case refundExclVat = "RefundExclVat"
    }

}