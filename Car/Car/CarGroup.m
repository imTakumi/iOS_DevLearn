//
//  CarGroup.m
//  Car
//
//  Created by 吴皓翔 on 15/8/9.
//  Copyright © 2015年 JCCF. All rights reserved.
//

#import "CarGroup.h"
#import "Car.h"


@implementation CarGroup

- (instancetype)initWithDict:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        [self setValue:dict[@"title"] forKey:@"title"];
//        [self setValue:dict[@"cars"] forKey:@"cars"];
//        [self setValuesForKeysWithDictionary:dict];
        self.cars = [Car carsWithArray:dict[@"cars"]];
    }
    return self;
}

+ (instancetype)carGroupWithDict:(NSDictionary *)dict {
    return [[self alloc]initWithDict:dict];
}

+ (NSArray *)carGroups {
    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cars_total.plist" ofType:nil]];
    
    NSMutableArray *arryM = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        [arryM addObject:[self carGroupWithDict:dict]];
    }
    return arryM;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@:%p> {title:%@, car:%@}",self.class, self, self.title, self.cars];
}

@end
