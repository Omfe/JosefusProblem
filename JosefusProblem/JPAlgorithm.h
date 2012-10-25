//
//  JPAlgorithm.h
//  JosefusProblem
//
//  Created by Omar Gudino on 10/23/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JPNode;

@interface JPAlgorithm : NSObject

- (void) startExecutingWithNumberOfNodes:(NSInteger)nodes withNumberOfJumps:(NSInteger)jumps;


@property (strong, nonatomic) JPNode *headNode;
@property (assign, nonatomic) NSInteger numberOfNodes;


@end
