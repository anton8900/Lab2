//
//  Banan.m
//  Fruits
//
//  Created by Anton Skutov on 9/25/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import "Banan.h"

@implementation Banan
@synthesize sort=_sort;
@synthesize size=_size;
@synthesize weight=_weight;
-(id)init
{
    self=[super init];
    if(self)
    {
        _sort=@"BananSort";
        _weight=10;
        _size=10;
    }
    return self;
}
-(id)initWithWeight: (int) orWeight Size: (int) orSize Sort: (NSString*) orSort
{
    self=[super init];
    if(self)
    {
        _sort=orSort;
        _weight=orWeight;
        _size=orSize;
    }
    return self;
}
-(void)getInfo
{
    NSLog(@"\nSize: %d\nWeight: %d\nSort: %@",_size,_weight,_sort);
}
@end