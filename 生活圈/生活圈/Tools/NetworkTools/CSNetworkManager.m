//
//  CSNetworkManager.m
//  白长松
//
//  Created by 白长松 on 16/7/25.
//  Copyright © 2016年 白长松. All rights reserved.
//

#import "CSNetworkManager.h"

@implementation CSNetworkManager

+ (instancetype)sharedManager {
    static CSNetworkManager *instance;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [self new];
        
        // 设置响应数据格式
        instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", nil];
    });
    
    return instance;
}

@end
