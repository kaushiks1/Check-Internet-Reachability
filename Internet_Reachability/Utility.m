//
//  Utility.m
//  Internet_Reachability
//
//  Created by Apple on 12/05/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "Utility.h"

@implementation Utility


+ (BOOL)isNetworkReachable
{
    BOOL isReachable = NO;
    AppDelegate *aAppdelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    Reachability *netReach = [aAppdelegate reachabile];
    
    NetworkStatus netStatus = [netReach currentReachabilityStatus];
    BOOL isConnectionRequired = [netReach connectionRequired];
    
    if ((netStatus == ReachableViaWiFi) || ((netStatus == ReachableViaWWAN) && !isConnectionRequired))
    {
        isReachable = YES;
    }
    
    return isReachable;
}

@end
