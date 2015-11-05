//
//  AppModel.h
//  SearchApp
//
//  Created by 吴皓翔 on 15/6/30.
//  Copyright (c) 2015年 Haoxiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppModel : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *intro;
@property (nonatomic, copy) NSString *icon;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)appsWithDict:(NSDictionary *)dict;

+ (NSArray *)apps;


@end
