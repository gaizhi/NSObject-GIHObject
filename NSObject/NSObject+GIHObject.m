//
//  NSObject+GIHObject.m
//  NSObject-GIHObject
//
//  Created by 强徐 on 16/6/15.
//  Copyright © 2016年 starnet. All rights reserved.
//

#import "NSObject+GIHObject.h"

#import <objc/runtime.h>

@implementation NSObject (GIHObject)

+ (void)gzh_swizzleSelector:(SEL)origSelector withSelector:(SEL)newSelector {
    
    Method origMethod = class_getInstanceMethod(self, origSelector);
    Method newMethod = class_getInstanceMethod(self, newSelector);
    
    if(class_addMethod(self, origSelector, method_getImplementation(newMethod), method_getTypeEncoding(newMethod))) {
        class_replaceMethod(self, newSelector, method_getImplementation(origMethod), method_getTypeEncoding(origMethod));
    } else {
        method_exchangeImplementations(origMethod, newMethod);
    }
}

@end
