//
//  ASTDefaultsSpec.m
//  Asterism
//
//  Created by Robert Böhnke on 21/11/13.
//  Copyright (c) 2013 Robert Böhnke. All rights reserved.
//

#import <Asterism/Asterism.h>

@interface ASTDefaultsTests : XCTestCase

@end

@implementation ASTDefaultsTests

- (void)testEverything {
    [XCTContext runActivityNamed:@"should return the union of both dictionaries" block:^(id<XCTActivity> _Nonnull activity){
        NSDictionary *dict     = @{ @1: @"foo" };
        NSDictionary *defaults = @{ @2: @"baz" };

        NSDictionary *result = @{
            @1: @"foo",
            @2: @"baz"
        };

        XCTAssertEqualObjects(ASTDefaults(dict, defaults), result);
    }];

    [XCTContext runActivityNamed:@"should prefer values from dict over values from defaults" block:^(id<XCTActivity> _Nonnull activity){
        NSDictionary *dict     = @{ @1: @"foo" };
        NSDictionary *defaults = @{ @1: @"bar" };

        XCTAssertEqualObjects(ASTDefaults(dict, defaults), dict);
    }];
}

@end
