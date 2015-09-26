//
//  Iterator.h
//  Fruits
//
//  Created by Anton Skutov on 9/25/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"
@interface Iterator : NSObject
@property (nonatomic) NSMutableArray* mas;
@property (nonatomic) unsigned long current;
@property (nonatomic) bool front;
-(id)next;
-(bool)hasNext;
-(id) init: (NSMutableArray*) array;
@end
