//
//  Car.m
//  汽车品牌列表
//
//  Created by 吴皓翔 on 16/1/11.
//  Copyright © 2016年 Haoxiang. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)initWithDict:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)carsWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

+ (NSArray *)carsWithArray:(NSArray *)array {
    
    NSMutableArray *arrayM = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        [arrayM addObject:[self carsWithDict:dict]];
    }
    return arrayM;
}

@end
