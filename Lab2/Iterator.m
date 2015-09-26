//
//  Iterator.m
//  Fruits
//
//  Created by Anton Skutov on 9/25/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import "Iterator.h"

@implementation Iterator
-(id)init: (NSMutableArray*) array
{
    self=[self init];
    if(self)
    {
        _current=0;
        _mas=array;
        _front=true;
    }
    return self;
}
-(bool) hasNext
{
    unsigned long n=[_mas count];
    if(n%2==0)
    {
        if(_current<n/2 || (_current<=n/2 && !_front))
        {
            return true;
        }
        return false;
    }
    else
    {
        if(_current<n/2+1)
        {
            return true;
        }
        
        if(_current==n/2+1)
        {
            return _front;
        }
        
        return false;
    }
}
-(id) next
{
    unsigned long rez;
    if([self hasNext])
    {
        if(_front)
        {
            rez=_current;
            _front=false;
            _current++;
        }
        else
        {
            rez=[_mas count]-_current;
            _front=true;
                
        }
    }
    return [_mas objectAtIndex:rez];
}
 @end
