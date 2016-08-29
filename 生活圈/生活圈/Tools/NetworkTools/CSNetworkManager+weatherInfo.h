//
//  CSNetworkManager+weatherInfo.h
//  白长松
//
//  Created by 白长松 on 16/7/25.
//  Copyright © 2016年 白长松. All rights reserved.
//

#import "CSNetworkManager.h"

@interface CSNetworkManager (weatherInfo)

- (void)weatherListWithCityid:(NSString *)cityid Completion:(void (^)(NSDictionary *dic, NSError *error))completion;

@end
