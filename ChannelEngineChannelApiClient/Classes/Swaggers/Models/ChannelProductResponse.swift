//
// ChannelProductResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChannelProductResponse: Codable {

    public enum VatRateType: String, Codable { 
        case standard = "STANDARD"
        case reduced = "REDUCED"
        case superReduced = "SUPER_REDUCED"
    }
    /** An unique identifier which ChannelEngine uses to identify the product.  Needed in the call &#39;POST /v2/products/data&#39; */
    public var _id: Int?
    /** The unique product reference used by the Channel for the parent product */
    public var parentChannelProductNo: String?
    /** A channel can require certain fields to be available. The channel  can provide ChannelEngine with this fields after which the merchants  will be able to fill in this field using custom conditions in ChannelEngine. */
    public var mappedFields: [String:String]?
    /** An optional list of key-value pairs containing  extra data about this product. This data can be  sent to channels or used for filtering products. */
    public var extraData: [ChannelProductExtraDataItemResponse]?
    /** The name of the product */
    public var name: String?
    /** A description of the product. Can contain these HTML tags:  div, span, pre, p, br, hr, hgroup, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, strong, em, b, i, u, img, a, abbr, address, blockquote, area, audio, video, caption, table, tbody, td, tfoot, th, thead, tr */
    public var _description: String?
    /** The brand of the product */
    public var brand: String?
    /** Optional. The size of the product (variant). E.g. fashion size (S-XL, 46-56, etc), width of the watch, etc.. */
    public var size: String?
    /** Optional. The color of the product (variant). */
    public var color: String?
    /** The EAN of GTIN of the product */
    public var ean: String?
    /** The unique product reference used by the manufacturer/vendor of the product */
    public var manufacturerProductNumber: String?
    /** The number of items in stock */
    public var stock: Int?
    /** Price, including VAT. */
    public var price: Double?
    /** Manufacturer&#39;s suggested retail price */
    public var MSRP: Double?
    /** Optional. The purchase price of the product. Useful for repricing. */
    public var purchasePrice: Double?
    /** The type of VAT which applies to this product.  See: http://ec.europa.eu/taxation_customs/taxation/vat/topics/rates_en.htm */
    public var vatRateType: VatRateType?
    /** Shipping cost of the product. */
    public var shippingCost: Double?
    /** A textual representation of the shippingtime.  For example, in Dutch: &#39;Op werkdagen voor 22:00 uur besteld, morgen in huis&#39; */
    public var shippingTime: String?
    /** A URL pointing to the merchant&#39;s webpage  which displays this product. */
    public var url: String?
    /** A URL at which an image of this product  can be found. */
    public var imageUrl: String?
    /** Url to an additional image of product (1) */
    public var extraImageUrl1: String?
    /** Url to an additional image of product (2) */
    public var extraImageUrl2: String?
    /** Url to an additional image of product (3) */
    public var extraImageUrl3: String?
    /** Url to an additional image of product (4) */
    public var extraImageUrl4: String?
    /** Url to an additional image of product (5) */
    public var extraImageUrl5: String?
    /** Url to an additional image of product (6) */
    public var extraImageUrl6: String?
    /** Url to an additional image of product (7) */
    public var extraImageUrl7: String?
    /** Url to an additional image of product (8) */
    public var extraImageUrl8: String?
    /** Url to an additional image of product (9) */
    public var extraImageUrl9: String?
    /** The category to which this product belongs.  Please supply this field in the following format:  &#39;maincategory &amp;gt; category &amp;gt; subcategory&#39;  For example:  &#39;vehicles &amp;gt; bikes &amp;gt; mountainbike&#39; */
    public var categoryTrail: String?


    public enum CodingKeys: String, CodingKey { 
        case _id = "Id"
        case parentChannelProductNo = "ParentChannelProductNo"
        case mappedFields = "MappedFields"
        case extraData = "ExtraData"
        case name = "Name"
        case _description = "Description"
        case brand = "Brand"
        case size = "Size"
        case color = "Color"
        case ean = "Ean"
        case manufacturerProductNumber = "ManufacturerProductNumber"
        case stock = "Stock"
        case price = "Price"
        case MSRP
        case purchasePrice = "PurchasePrice"
        case vatRateType = "VatRateType"
        case shippingCost = "ShippingCost"
        case shippingTime = "ShippingTime"
        case url = "Url"
        case imageUrl = "ImageUrl"
        case extraImageUrl1 = "ExtraImageUrl1"
        case extraImageUrl2 = "ExtraImageUrl2"
        case extraImageUrl3 = "ExtraImageUrl3"
        case extraImageUrl4 = "ExtraImageUrl4"
        case extraImageUrl5 = "ExtraImageUrl5"
        case extraImageUrl6 = "ExtraImageUrl6"
        case extraImageUrl7 = "ExtraImageUrl7"
        case extraImageUrl8 = "ExtraImageUrl8"
        case extraImageUrl9 = "ExtraImageUrl9"
        case categoryTrail = "CategoryTrail"
    }


}

