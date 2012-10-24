//
//  JPAlgorithm.m
//  JosefusProblem
//
//  Created by Omar Gudino on 10/23/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import "JPAlgorithm.h"
#import "JPNode.h"

@implementation JPAlgorithm

- (void)startExecutingWithNumberOfNodes:(NSInteger *)nodes withNumberOfJumps:(NSInteger *)jumps
{
    JPNode *currentNode;
    
    currentNode = self.headNode;
    self.headNode.nextNode = self.tailNode;
}

@end
