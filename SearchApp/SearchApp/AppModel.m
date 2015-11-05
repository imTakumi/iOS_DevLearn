//
//  AppModel.m
//  SearchApp
//
//  Created by 吴皓翔 on 15/6/30.
//  Copyright (c) 2015年 Haoxiang. All rights reserved.
//

#import "AppModel.h"

@implementation AppModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)appsWithDict:(NSDictionary *)dict {
    return [[self alloc]initWithDict:dict];
}

+ (NSArray *)apps {
    NSArray *array = [[NSArray alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"heros.plist" ofType:nil]];
    
    NSMutableArray *arrayM = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        [arrayM addObject:[self appsWithDict:dict]];
    }
    return arrayM;
}

@end
