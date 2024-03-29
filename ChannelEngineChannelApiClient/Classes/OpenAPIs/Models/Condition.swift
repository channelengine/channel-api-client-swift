//
// Condition.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum Condition: String, Codable, CaseIterable {
    case new = "NEW"
    case newRefurbished = "NEW_REFURBISHED"
    case usedAsNew = "USED_AS_NEW"
    case usedGood = "USED_GOOD"
    case usedReasonable = "USED_REASONABLE"
    case usedMediocre = "USED_MEDIOCRE"
    case unknown = "UNKNOWN"
    case usedVeryGood = "USED_VERY_GOOD"
}
