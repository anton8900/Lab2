//
//  Bascket.m
//  Fruits
//
//  Created by Anton Skutov on 9/25/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import "Bascket.h"
#import "Iterator.h"
#import "Fruit.h"
@implementation Bascket
-(Iterator*) iterator
{
    return [[Iterator alloc] init: _mas];
}
-(void) putFruit:(id)fruit
{
    [_mas addObject:fruit];
}
-(unsigned long) size
{
    return [_mas count];
}
-(id)init
{
    _mas=[NSMutableArray new];
    return self;
}
@end
