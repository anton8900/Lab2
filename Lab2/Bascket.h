//
//  Bascket.h
//  Fruits
//
//  Created by Anton Skutov on 9/25/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"
#import "Fruit.h"
@interface Bascket : NSObject
@property (nonatomic) NSMutableArray* mas;
-(id)init;
-(Iterator*) iterator;
-(void)putFruit: (id) fruit;
-(unsigned long) size;
@end
