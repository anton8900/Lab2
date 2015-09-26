//
//  Fruit.h
//  Fruits
//
//  Created by Anton Skutov on 9/25/15.
//  Copyright (c) 2015 Anton Skutov. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol Fruit <NSObject>
@property (nonatomic) int weight;
@property (nonatomic) NSString* sort;
@property (nonatomic) int size;
- (void)getInfo;
@end
