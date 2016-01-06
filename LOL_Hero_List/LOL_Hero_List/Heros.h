//
//  Heros.h
//  LOL_Hero_List
//
//  Created by 吴皓翔 on 16/1/6.
//  Copyright © 2016年 Haoxiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Heros : NSObject

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *icon;
@property (nonatomic, copy)NSString *intro;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)heroWithDict:(NSDictionary *)dict;


+ (NSArray *)heros;

@end
