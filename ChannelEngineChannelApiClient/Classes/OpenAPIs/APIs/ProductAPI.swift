//
// ProductAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class ProductAPI {
    /**
     Acknowledge Product Data Changes.
     
     - parameter channelProcessedChangesRequest: (body) The merchant references of the products which have been&lt;br /&gt; successfully created, updated or deleted (after a call to &#39;GetDataChanges&#39;). (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func productAcknowledgeDataChanges(channelProcessedChangesRequest: ChannelProcessedChangesRequest? = nil, apiResponseQueue: DispatchQueue = ChannelEngineChannelApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiResponse?, _ error: Error?) -> Void)) {
        productAcknowledgeDataChangesWithRequestBuilder(channelProcessedChangesRequest: channelProcessedChangesRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Acknowledge Product Data Changes.
     - POST /v2/products/data
     - This endpoint should be called after a call to GET 'v2/products/data'. After a call to<br />this endpoint ChannelEngine 'knows' which products are known to the channel (and the last<br />time they have been updated) and is therefore able to only return the products<br />that really have changed since the last call to POST 'v2/products/data'.<br />The supplied ChannelReturnNo will be saved<br />in our database and is supposed to be unique, the 'Updated' and 'Removed'<br />fields consist of ChannelReferences which are sent in a previous call<br />within the field 'Created'.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter channelProcessedChangesRequest: (body) The merchant references of the products which have been&lt;br /&gt; successfully created, updated or deleted (after a call to &#39;GetDataChanges&#39;). (optional)
     - returns: RequestBuilder<ApiResponse> 
     */
    open class func productAcknowledgeDataChangesWithRequestBuilder(channelProcessedChangesRequest: ChannelProcessedChangesRequest? = nil) -> RequestBuilder<ApiResponse> {
        let path = "/v2/products/data"
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: channelProcessedChangesRequest)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Acknowledge Product Offer Changes.
     
     - parameter keyIsMpn: (query) If set to true, changes has to be a list of merchant references instead of channel references. (optional, default to false)
     - parameter requestBody: (body) The channel references of the updated products. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func productAcknowledgeOfferChanges(keyIsMpn: Bool? = nil, requestBody: [String]? = nil, apiResponseQueue: DispatchQueue = ChannelEngineChannelApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiResponse?, _ error: Error?) -> Void)) {
        productAcknowledgeOfferChangesWithRequestBuilder(keyIsMpn: keyIsMpn, requestBody: requestBody).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Acknowledge Product Offer Changes.
     - POST /v2/products/offers
     - After a call to GET 'v2/products/offers' this endpoint should be called with the<br />ChannelProductNo of the products that are successfully updated.<br />Please see 'v2/products/data' and 'v2/products/data' for documentation.<br />In advanced cases, the MerchantProductNo is used for this.<br />In that case, bool keyIsMpn should be true.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter keyIsMpn: (query) If set to true, changes has to be a list of merchant references instead of channel references. (optional, default to false)
     - parameter requestBody: (body) The channel references of the updated products. (optional)
     - returns: RequestBuilder<ApiResponse> 
     */
    open class func productAcknowledgeOfferChangesWithRequestBuilder(keyIsMpn: Bool? = nil, requestBody: [String]? = nil) -> RequestBuilder<ApiResponse> {
        let path = "/v2/products/offers"
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: requestBody)

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "keyIsMpn": keyIsMpn?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get Product Data Changes.
     
     - parameter maxCount: (query) Optional - limit the amount of products returned for each field&lt;br /&gt; (ToBeCreated, ToBeUpdated, ToBeRemoved) to this number. (optional)
     - parameter stripHtml: (query) Optional - strips html by default on all fields (optional, default to true)
     - parameter page: (query)  (optional)
     - parameter pageSize: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func productGetDataChanges(maxCount: Int? = nil, stripHtml: Bool? = nil, page: Int? = nil, pageSize: Int? = nil, apiResponseQueue: DispatchQueue = ChannelEngineChannelApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: SingleOfChannelProductChangesResponse?, _ error: Error?) -> Void)) {
        productGetDataChangesWithRequestBuilder(maxCount: maxCount, stripHtml: stripHtml, page: page, pageSize: pageSize).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Product Data Changes.
     - GET /v2/products/data
     - Get all products which have changes since the post http call to POST 'v2/products/data'.<br />The response contains the products which should be created, updated or removed from the channel.<br />After the products have been received and processed successfully 'v2/products/data' should<br />be called with the merchant references of the products which have been processed (see POST 'v2/products/data').<br />ChannelEngine will save this information to make sure that the next call to GET 'v2/products/data' only returns the<br />products that really have changes (and therefore should be created, updated or deleted).<br />A channel willing to integrate with channelengine should therefore only do the following things:<br /> 1. Periodically poll 'v2/products/data' for changes.<br /> 2. If any products are returned, save, update or remove these products.<br /> 3. Send the merchant references of the products that have succesfully been processed<br /> in step 2 to POST 'v2/products/data'.<br /> <br />These three simple steps will make sure that the products on the channel will be synchronized<br />with the products on ChannelEngine. ChannelEngine will use the API key to determine the customer<br />whose products should be returned. Note that child products are only returned if their parent product<br />has been acknowledged in a previous transaction. This way ChannelEngine knows the value of<br />'ChannelParentReference'.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter maxCount: (query) Optional - limit the amount of products returned for each field&lt;br /&gt; (ToBeCreated, ToBeUpdated, ToBeRemoved) to this number. (optional)
     - parameter stripHtml: (query) Optional - strips html by default on all fields (optional, default to true)
     - parameter page: (query)  (optional)
     - parameter pageSize: (query)  (optional)
     - returns: RequestBuilder<SingleOfChannelProductChangesResponse> 
     */
    open class func productGetDataChangesWithRequestBuilder(maxCount: Int? = nil, stripHtml: Bool? = nil, page: Int? = nil, pageSize: Int? = nil) -> RequestBuilder<SingleOfChannelProductChangesResponse> {
        let path = "/v2/products/data"
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "maxCount": maxCount?.encodeToJSON(),
            "stripHtml": stripHtml?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "pageSize": pageSize?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SingleOfChannelProductChangesResponse>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get Product Data Changes with an optional product type filter. If you select product type products will be filtered by it.  If you won't pass product type you will get products with types: CHILD, PARENT, GRANDPARENT, SINGLE
     
     - parameter productType: (query) Optional - Type of products (optional)
     - parameter maxCount: (query) Optional - limit the amount of products returned for each field&lt;br /&gt; (ToBeCreated, ToBeUpdated, ToBeRemoved) to this number. (optional)
     - parameter stripHtml: (query) Optional - strips html by default on all fields (optional, default to true)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func productGetDataChangesFull(productType: DataChangesProductType? = nil, maxCount: Int? = nil, stripHtml: Bool? = nil, apiResponseQueue: DispatchQueue = ChannelEngineChannelApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: SingleOfChannelProductChangesResponse?, _ error: Error?) -> Void)) {
        productGetDataChangesFullWithRequestBuilder(productType: productType, maxCount: maxCount, stripHtml: stripHtml).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Product Data Changes with an optional product type filter. If you select product type products will be filtered by it.  If you won't pass product type you will get products with types: CHILD, PARENT, GRANDPARENT, SINGLE
     - GET /v2/products/data/full
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter productType: (query) Optional - Type of products (optional)
     - parameter maxCount: (query) Optional - limit the amount of products returned for each field&lt;br /&gt; (ToBeCreated, ToBeUpdated, ToBeRemoved) to this number. (optional)
     - parameter stripHtml: (query) Optional - strips html by default on all fields (optional, default to true)
     - returns: RequestBuilder<SingleOfChannelProductChangesResponse> 
     */
    open class func productGetDataChangesFullWithRequestBuilder(productType: DataChangesProductType? = nil, maxCount: Int? = nil, stripHtml: Bool? = nil) -> RequestBuilder<SingleOfChannelProductChangesResponse> {
        let path = "/v2/products/data/full"
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "productType": productType?.encodeToJSON(),
            "maxCount": maxCount?.encodeToJSON(),
            "stripHtml": stripHtml?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SingleOfChannelProductChangesResponse>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get Product Offer Changes.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func productGetOfferChanges(apiResponseQueue: DispatchQueue = ChannelEngineChannelApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfChannelOfferResponse?, _ error: Error?) -> Void)) {
        productGetOfferChangesWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Product Offer Changes.
     - GET /v2/products/offers
     - GET 'v2/products/offers' and POST 'v2/products/offers' closely resemble GET 'v2/products/data' and POST 'v2/products/data'. See the 'v2/products/data'<br />endpoints for documentation. The difference between both endpoints is that 'v2/products/offers' only returns Price and Stock updates and can (and should)<br />therefore be called more often to keep this information (which might change frequently) up to date.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - returns: RequestBuilder<CollectionOfChannelOfferResponse> 
     */
    open class func productGetOfferChangesWithRequestBuilder() -> RequestBuilder<CollectionOfChannelOfferResponse> {
        let path = "/v2/products/offers"
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CollectionOfChannelOfferResponse>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
