//
//  NSObject+GZHObject.h
//  NSObject-GZHObject
//
//  Created by 强徐 on 16/6/15.
//  Copyright © 2016年 starnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (GZHObject)

+ (void)gzh_swizzleSelector:(SEL)origSelector withSelector:(SEL)newSelector;

@end
