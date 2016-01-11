//
//  CarsGroup.m
//  汽车品牌列表
//
//  Created by 吴皓翔 on 16/1/11.
//  Copyright © 2016年 Haoxiang. All rights reserved.
//

#import "CarGroup.h"
#import "Car.h"

@implementation CarGroup

- (instancetype)initWithDict:(NSDictionary *)dict {
    self = [super init];
    if (self) {
//        [self setValuesForKeysWithDictionary:dict];
        [self setValue:dict[@"title"] forKey:@"title"];
        self.cars = [Car carsWithArray:dict[@"cars"]];
    }
    return self;
}

+ (instancetype)carGroupWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

+ (NSArray *)rootCarGroup {
    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cars_total.plist" ofType:nil]];
    NSMutableArray *arrayM = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        [arrayM addObject:[self carGroupWithDict:dict]];
    }
    return arrayM;
}

@end
