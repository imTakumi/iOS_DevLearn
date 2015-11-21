//
//  FriendsGroupModel.h
//  QQ_Friends
//
//  Created by 吴皓翔 on 15/11/21.
//  Copyright © 2015年 吴皓翔. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FriendsGroupModel : NSObject
@property (nonatomic, strong)NSArray *friends;
@property (nonatomic, copy)NSString *groupName;
@property (nonatomic, assign)int online;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)friendsGroupWithDict:(NSDictionary *)dict;

@end
