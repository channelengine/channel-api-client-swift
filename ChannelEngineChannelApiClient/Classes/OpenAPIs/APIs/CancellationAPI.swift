//
// CancellationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class CancellationAPI {
    /**
     Get Cancellations.
     
     - parameter createdSince: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func cancellationIndex(createdSince: Date? = nil, apiResponseQueue: DispatchQueue = ChannelEngineChannelApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfChannelCancellationResponse?, _ error: Error?) -> Void)) {
        cancellationIndexWithRequestBuilder(createdSince: createdSince).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Cancellations.
     - GET /v2/cancellations
     - Gets all cancellations created since the supplied date.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter createdSince: (query)  (optional)
     - returns: RequestBuilder<CollectionOfChannelCancellationResponse> 
     */
    open class func cancellationIndexWithRequestBuilder(createdSince: Date? = nil) -> RequestBuilder<CollectionOfChannelCancellationResponse> {
        let path = "/v2/cancellations"
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "createdSince": createdSince?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CollectionOfChannelCancellationResponse>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
