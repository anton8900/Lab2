//
//  Test.m
//  Test
//
//  Created by Anton Skutov on 9/26/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Fruit.h"
#import "Apple.h"
#import "Orange.h"
#import "Banan.h"
#import "Bascket.h"
#import "Iterator.h"

@interface Test : XCTestCase

@end

@implementation Test

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testOne {
    Bascket *bus=[Bascket new];
    [bus putFruit:[Apple new]];
    [bus putFruit:[Orange new]];
    [bus putFruit:[Banan new]];
    XCTAssertEqual([bus size], 3, @"(%lu) equal to (%d)", [bus size], 3);
}

- (void)testSecond{
    Bascket *bus=[Bascket new];
    [bus putFruit:[Apple new]];
    [bus putFruit:[Orange new]];
    [bus putFruit:[Banan new]];
    Iterator * it=[bus iterator];
    int k=0;
    while(it.hasNext)
    {
        [[it next] getInfo];
        k++;
    }
    XCTAssertEqual(3, k, @"(%d) equal to (%d)", 3, k);
}

- (void)testThree{
    Bascket *bus=[Bascket new];
    [bus putFruit:[Apple new]];
    [bus putFruit:[Orange new]];
    [bus putFruit:[Banan new]];
    [bus putFruit:[Banan new]];
    Iterator * it=[bus iterator];
    int k=0;
    while(it.hasNext)
    {
        [[it next] getInfo];
        k++;
    }
    XCTAssertEqual(4, k, @"(%d) equal to (%d)", 4, k);
}

@end
