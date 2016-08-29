//
//  CSNetworkManager+weatherInfo.m
//  白长松
//
//  Created by 白长松 on 16/7/25.
//  Copyright © 2016年 白长松. All rights reserved.
//

#import "CSNetworkManager+weatherInfo.h"
#import "AFNetworking.h"

@implementation CSNetworkManager (weatherInfo)

- (void)weatherListWithCityid:(NSString *)cityid Completion:(void (^)(NSDictionary *, NSError *))completion {
    NSAssert(completion != nil, @"传入完成回调");

    NSString *urlString = [NSString stringWithFormat:@"http://www.weather.com.cn/data/cityinfo/%@.html",cityid];
    [self GET:urlString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        completion(responseObject, nil);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        completion(nil, error);
    }];
    
    
}

@end
