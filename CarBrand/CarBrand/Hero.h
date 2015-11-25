//
//  Hero.h
//  CarBrand
//
//  Created by 吴皓翔 on 15/11/25.
//  Copyright © 2015年 吴皓翔. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hero : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *intro;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)heroWithDict:(NSDictionary *)dict;
+ (NSArray *)heros;

@end
