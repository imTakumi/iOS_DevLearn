//
//  NSArray+Log.m
//  ApplicationPage
//
//  Created by 吴皓翔 on 15/11/15.
//  Copyright © 2015年 Haoxiang. All rights reserved.
//

#import "NSArray+Log.h"

@implementation NSArray (Log)

- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    
    for (id obj in self) {
        [strM appendFormat:@"\t%@,\n", obj];
    }
    
    [strM appendString:@")\n"];
    
    return strM;
}


@end
