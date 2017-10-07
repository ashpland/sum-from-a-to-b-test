//
//  SumTests.m
//  SumTests
//
//  Created by Sam Meech-Ward on 2017-10-06.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface SumTests : XCTestCase

@end

@implementation SumTests

int sum(int fromN, int toN) {
    if (fromN == toN) {
        return toN;
    }
    
    return fromN + sum(fromN+1, toN);
}

- (void)testSumFunction {
    XCTAssertEqual(sum(1, 1), 1);
    XCTAssertEqual(sum(1, 2), 3);
    XCTAssertEqual(sum(3, 7), 25);
}



@end
