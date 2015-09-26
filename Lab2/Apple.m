//
//  Apple.m
//  Fruits
//
//  Created by Anton Skutov on 9/25/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import "Apple.h"

@implementation Apple
@synthesize sort=_sort;
@synthesize size=_size;
@synthesize weight=_weight;
-(id)init
{
    self=[super init];
    if(self)
    {
        _sort=@"AppleSort";
        _weight=10;
        _size=10;
        _count=3;
    }
    return self;
}
-(id)initWithWeight: (int) aplWeight Size: (int) aplSize Sort: (NSString*) aplSort Count: (int) count
{
    self=[super init];
    if(self)
    {
        _sort=aplSort;
        _weight=aplWeight;
        _size=aplSize;
        _count=count;
    }
    return self;
}
-(void)getInfo
{
    NSLog(@"\nSize: %d\nWeight: %d\nSort: %@ \nCount: %d",_size,_weight,_sort,_count);
}
@end
