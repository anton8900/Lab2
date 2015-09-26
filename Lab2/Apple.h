//
//  Apple.h
//  Fruits
//
//  Created by Anton Skutov on 9/25/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

@interface Apple : NSObject <Fruit>{
    int weight;
    NSString* sort;
    int size;
}
@property (nonatomic) int count;
-(id)init;
-(id)initWithWeight: (int) aplWeight Size: (int) aplSize Sort: (NSString*) aplSort Count: (int) count;
@end
