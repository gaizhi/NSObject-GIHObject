//
//  NSObject+GIHObject.h
//  NSObject-GIHObject
//
//  Created by 强徐 on 16/6/15.
//  Copyright © 2016年 starnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (GIHObject)

+ (void)gzh_swizzleSelector:(SEL)origSelector withSelector:(SEL)newSelector;

@end
