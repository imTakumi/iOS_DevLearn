//
//  CarGroup.h
//  Car
//
//  Created by 吴皓翔 on 15/8/9.
//  Copyright © 2015年 JCCF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarGroup : NSObject
@property(nonatomic, strong)NSArray *cars;
@property(nonatomic, copy)NSString *title;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)carGroupWithDict:(NSDictionary *)dict;

+ (NSArray *)carGroups;

@end
