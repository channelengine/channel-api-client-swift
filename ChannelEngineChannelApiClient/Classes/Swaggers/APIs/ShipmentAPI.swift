//
// ShipmentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ShipmentAPI {
    /**
     Get Shipments
     
     - parameter createdSince: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func shipmentIndex(createdSince: Date? = nil, completion: @escaping ((_ data: CollectionOfChannelShipmentResponse?,_ error: Error?) -> Void)) {
        shipmentIndexWithRequestBuilder(createdSince: createdSince).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Shipments
     - GET /v2/shipments
     - Gets all shipments created since the supplied date.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "TotalCount" : 1,
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "Content" : [ {
    "ChannelOrderNo" : "ChannelOrderNo",
    "TrackTraceUrl" : "TrackTraceUrl",
    "CreatedAt" : "2000-01-23T04:56:07.000+00:00",
    "TrackTraceNo" : "TrackTraceNo",
    "Method" : "Method",
    "UpdatedAt" : "2000-01-23T04:56:07.000+00:00",
    "Lines" : [ {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    }, {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    } ]
  }, {
    "ChannelOrderNo" : "ChannelOrderNo",
    "TrackTraceUrl" : "TrackTraceUrl",
    "CreatedAt" : "2000-01-23T04:56:07.000+00:00",
    "TrackTraceNo" : "TrackTraceNo",
    "Method" : "Method",
    "UpdatedAt" : "2000-01-23T04:56:07.000+00:00",
    "Lines" : [ {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    }, {
      "Quantity" : 0,
      "ChannelProductNo" : "ChannelProductNo"
    } ]
  } ],
  "ItemsPerPage" : 5,
  "Count" : 6,
  "StatusCode" : 5,
  "LogId" : 2,
  "Success" : true
}}]
     
     - parameter createdSince: (query)  (optional)

     - returns: RequestBuilder<CollectionOfChannelShipmentResponse> 
     */
    open class func shipmentIndexWithRequestBuilder(createdSince: Date? = nil) -> RequestBuilder<CollectionOfChannelShipmentResponse> {
        let path = "/v2/shipments"
        let URLString = ChannelEngineChannelApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "createdSince": createdSince?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<CollectionOfChannelShipmentResponse>.Type = ChannelEngineChannelApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
