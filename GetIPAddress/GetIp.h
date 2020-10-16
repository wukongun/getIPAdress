//
//  GetIp.h
//  GetIPAddress
//
//  Created by MAC71 on 2020/10/16.
//  Copyright © 2020 风外杏林香. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GetIp : NSObject
+ (NSString *)getLocalIPAddress:(BOOL)preferIPv4;
+ (NSDictionary *)getIPAddresses;
@end

NS_ASSUME_NONNULL_END
