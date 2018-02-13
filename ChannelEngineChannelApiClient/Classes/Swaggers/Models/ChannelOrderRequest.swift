//
// ChannelOrderRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChannelOrderRequest: Codable {

    /** The unique order reference used by the Channel */
    public var channelOrderNo: String
    /** The order lines */
    public var lines: [ChannelOrderLineRequest]
    public var phone: String?
    public var email: String
    public var companyRegistrationNo: String?
    public var vatNo: String?
    public var paymentMethod: String
    /** The shipping fee including VAT  (in the tenant&#39;s base currency calculated using the exchange rate at the time of ordering). */
    public var shippingCostsInclVat: Double
    public var currencyCode: String
    public var orderDate: Date
    public var channelCustomerNo: String?
    public var billingAddress: Address
    public var shippingAddress: Address
    public var extraData: [String:String]?


    public enum CodingKeys: String, CodingKey { 
        case channelOrderNo = "ChannelOrderNo"
        case lines = "Lines"
        case phone = "Phone"
        case email = "Email"
        case companyRegistrationNo = "CompanyRegistrationNo"
        case vatNo = "VatNo"
        case paymentMethod = "PaymentMethod"
        case shippingCostsInclVat = "ShippingCostsInclVat"
        case currencyCode = "CurrencyCode"
        case orderDate = "OrderDate"
        case channelCustomerNo = "ChannelCustomerNo"
        case billingAddress = "BillingAddress"
        case shippingAddress = "ShippingAddress"
        case extraData = "ExtraData"
    }


}
