//
// OrderAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class OrderAPI {
    /**
     Create Order.
     
     - parameter channelOrderRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderCreate(channelOrderRequest: ChannelOrderRequest? = nil, apiResponseQueue: DispatchQueue = ChannelEngineChannelApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiResponse?,_ error: Error?) -> Void)) {
        orderCreateWithRequestBuilder(channelOrderRequest: channelOrderRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Order.
     - POST /v2/orders
     - Create a new order in ChannelEngine.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter channelOrderRequest: (body)  (optional)
     - returns: RequestBuilder<ApiResponse> 
     */
    open class func orderCreateWithRequestBuilder(channelOrderRequest: ChannelOrderRequest? = nil) -> RequestBuilder<ApiResponse> {
        let path = "/v2/orders"
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: channelOrderRequest)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Download Invoice.
     
     - parameter merchantOrderNo: (path) The unique order reference as used by the merchant. 
     - parameter useCustomerCulture: (query) Generate the invoice in the billing address&#39; country&#39;s language. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderInvoice(merchantOrderNo: String, useCustomerCulture: Bool? = nil, apiResponseQueue: DispatchQueue = ChannelEngineChannelApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: URL?,_ error: Error?) -> Void)) {
        orderInvoiceWithRequestBuilder(merchantOrderNo: merchantOrderNo, useCustomerCulture: useCustomerCulture).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Download Invoice.
     - GET /v2/orders/{merchantOrderNo}/invoice
     - Generates the ChannelEngine VAT invoice for this order in PDF.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantOrderNo: (path) The unique order reference as used by the merchant. 
     - parameter useCustomerCulture: (query) Generate the invoice in the billing address&#39; country&#39;s language. (optional, default to false)
     - returns: RequestBuilder<URL> 
     */
    open class func orderInvoiceWithRequestBuilder(merchantOrderNo: String, useCustomerCulture: Bool? = nil) -> RequestBuilder<URL> {
        var path = "/v2/orders/{merchantOrderNo}/invoice"
        let merchantOrderNoPreEscape = "\(APIHelper.mapValueToPathItem(merchantOrderNo))"
        let merchantOrderNoPostEscape = merchantOrderNoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{merchantOrderNo}", with: merchantOrderNoPostEscape, options: .literal, range: nil)
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "useCustomerCulture": useCustomerCulture?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<URL>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Download Packing Slip.
     
     - parameter merchantOrderNo: (path) The unique order reference as used by the merchant. 
     - parameter useCustomerCulture: (query) Generate the invoice in the billing address&#39; country&#39;s language. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderPackingSlip(merchantOrderNo: String, useCustomerCulture: Bool? = nil, apiResponseQueue: DispatchQueue = ChannelEngineChannelApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: URL?,_ error: Error?) -> Void)) {
        orderPackingSlipWithRequestBuilder(merchantOrderNo: merchantOrderNo, useCustomerCulture: useCustomerCulture).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Download Packing Slip.
     - GET /v2/orders/{merchantOrderNo}/packingslip
     - Generates the ChannelEngine packing slip for this order in PDF.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantOrderNo: (path) The unique order reference as used by the merchant. 
     - parameter useCustomerCulture: (query) Generate the invoice in the billing address&#39; country&#39;s language. (optional, default to false)
     - returns: RequestBuilder<URL> 
     */
    open class func orderPackingSlipWithRequestBuilder(merchantOrderNo: String, useCustomerCulture: Bool? = nil) -> RequestBuilder<URL> {
        var path = "/v2/orders/{merchantOrderNo}/packingslip"
        let merchantOrderNoPreEscape = "\(APIHelper.mapValueToPathItem(merchantOrderNo))"
        let merchantOrderNoPostEscape = merchantOrderNoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{merchantOrderNo}", with: merchantOrderNoPostEscape, options: .literal, range: nil)
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "useCustomerCulture": useCustomerCulture?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<URL>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}