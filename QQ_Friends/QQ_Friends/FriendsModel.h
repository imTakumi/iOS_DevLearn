//
//  FriendsModel.h
//  QQ_Friends
//
//  Created by 吴皓翔 on 15/11/21.
//  Copyright © 2015年 吴皓翔. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FriendsModel : NSObject

@property (nonatomic, copy)NSString *name;     //
@property (nonatomic, copy)NSString *icon;     //
@property (nonatomic, copy)NSString *intro;    //
@property (nonatomic, assign, getter = isVip)BOOL *vip;        //

+ (instancetype)frendsWithDict:(NSDictionary *)dict;
- (instancetype)initWithDict:(NSDictionary *)dict;
@end
