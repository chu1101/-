//
//  CSNetworkManager.h
//  白长松
//
//  Created by 白长松 on 16/7/25.
//  Copyright © 2016年 白长松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface CSNetworkManager : AFHTTPSessionManager

+ (instancetype)sharedManager;

@end
