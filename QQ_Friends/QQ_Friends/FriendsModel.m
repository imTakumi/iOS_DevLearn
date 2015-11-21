//
//  FriendsModel.m
//  QQ_Friends
//
//  Created by 吴皓翔 on 15/11/21.
//  Copyright © 2015年 吴皓翔. All rights reserved.
//

#import "FriendsModel.h"

@implementation FriendsModel
- (instancetype)initWithDict:(NSDictionary *)dict {
    if(self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
}

+ (instancetype)frendsWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

@end
