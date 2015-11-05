//
//  Car.h
//  Car
//
//  Created by 吴皓翔 on 15/8/9.
//  Copyright © 2015年 JCCF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *icon;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)carWithhDict:(NSDictionary *)dict;

+ (NSArray *)carsWithArray:(NSArray *)array;

@end
