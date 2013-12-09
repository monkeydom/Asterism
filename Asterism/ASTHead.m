//
//  ASTHead.m
//  Asterism
//
//  Created by Robert Böhnke on 6/1/13.
//  Copyright (c) 2013 Robert Böhnke. All rights reserved.
//

#import "ASTHead.h"

OVERLOADABLE id ASTHead(NSArray *array) {
    return array.count > 0 ? array[0] : nil;
}

OVERLOADABLE id ASTHead(NSOrderedSet *set) {
    return set.count > 0 ? set[0] : nil;
}
