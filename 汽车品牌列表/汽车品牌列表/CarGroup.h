//
//  CarsGroup.h
//  汽车品牌列表
//
//  Created by 吴皓翔 on 16/1/11.
//  Copyright © 2016年 Haoxiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarGroup : NSObject

@property (nonatomic, strong) NSArray *cars;
@property (nonatomic, copy) NSString *title;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)carGroupWithDict:(NSDictionary *)dict;

+ (NSArray *)rootCarGroup;

@end
