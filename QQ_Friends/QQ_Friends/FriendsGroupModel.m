//
//  FriendsGroupModel.m
//  QQ_Friends
//
//  Created by 吴皓翔 on 15/11/21.
//  Copyright © 2015年 吴皓翔. All rights reserved.
//

#import "FriendsGroupModel.h"
#import "FriendsModel.h"

@implementation FriendsGroupModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    [self setValuesForKeysWithDictionary:dict];
    if (self = [super init]) {
        
        NSMutableArray *mArray = [NSMutableArray array];
        for (NSDictionary *dict in self.friends) {
            FriendsGroupModel *model = [FriendsGroupModel friendsGroupWithDict:dict];
            [mArray addObject:model];
        }
        self.friends = mArray;
    }
    return self;
}

+ (instancetype)friendsGroupWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

@end
