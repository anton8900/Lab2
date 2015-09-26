//
//  Banan.h
//  Fruits
//
//  Created by Anton Skutov on 9/25/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

@interface Banan : NSObject <Fruit>{
    int weight;
    NSString* sort;
    int size;
}
-(id)init;
-(id)initWithWeight: (int) aplWeight Size: (int) aplSize Sort: (NSString*) aplSort;
@end
