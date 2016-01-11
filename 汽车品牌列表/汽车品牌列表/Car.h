//
//  Car.h
//  汽车品牌列表
//
//  Created by 吴皓翔 on 16/1/11.
//  Copyright © 2016年 Haoxiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *name;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)carsWithDict:(NSDictionary *)dict;

//  传入一个包含字典的数组，返回一个模型数组
+ (NSArray *)carsWithArray:(NSArray *)array;

@end
