//
//  Orange.m
//  Fruits
//
//  Created by Anton Skutov on 9/25/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import "Orange.h"

@implementation Orange
@synthesize sort=_sort;
@synthesize size=_size;
@synthesize weight=_weight;
-(id)init
{
    self=[super init];
    if(self)
    {
        _sort=@"OrangeSort";
        _weight=10;
        _size=10;
        _count=3;
    }
    return self;
}
-(id)initWithWeight: (int) orWeight Size: (int) orSize Sort: (NSString*) orSort Count: (int) count
{
    self=[super init];
    if(self)
    {
        _sort=orSort;
        _weight=orWeight;
        _size=orSize;
        _count=count;
    }
    return self;
}
-(void)getInfo
{
    NSLog(@"\nSize: %d\nWeight: %d\nSort: %@\nCount: %d",_size,_weight,_sort,_count);
}
@end
