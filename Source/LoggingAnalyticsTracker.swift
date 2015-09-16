//
//  LoggingAnalyticsTracker.swift
//  edX
//
//  Created by Akiva Leffert on 9/11/15.
//  Copyright (c) 2015 edX. All rights reserved.
//

import UIKit

class LoggingAnalyticsTracker: NSObject, OEXAnalyticsTracker {
    private let ANALYTICS = "ANALYTICS"
    
    func identifyUser(user: OEXUserDetails) {
        Logger.logInfo(ANALYTICS, "Identified User: \(user)")
    }
    
    func clearIdentifiedUser() {
        Logger.logInfo(ANALYTICS, "Clear Identified User")
    }
    
    func trackEvent(event: OEXAnalyticsEvent, forComponent component: String?, withProperties properties: [NSObject : AnyObject]) {
        Logger.logInfo(ANALYTICS, "Track Event: \(event), component: \(component), properties: \(properties)")
    }
    
    func trackScreenWithName(screenName: String) {
        Logger.logInfo(ANALYTICS, "Track Screen Named: \(screenName)")
    }
}