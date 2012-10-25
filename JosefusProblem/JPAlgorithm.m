//
//  JPAlgorithm.m
//  JosefusProblem
//
//  Created by Omar Gudino on 10/23/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import "JPAlgorithm.h"
#import "JPList.h"
#import "JPNode.h"

@implementation JPAlgorithm

- (void)startExecutingWithNumberOfNodes:(NSInteger)numberOfNodes withNumberOfJumps:(NSInteger)jumps
{
    JPNode *currentNode;
    JPNode *deleteNode;
    NSInteger i = 1;
    
    currentNode = self.headNode;
    while (numberOfNodes > 1) {
        while (i < jumps) {
            currentNode = currentNode.nextNode;
            i++;
        }
        i = 1;
        deleteNode = currentNode.nextNode;
        currentNode.nextNode = deleteNode.nextNode;
        numberOfNodes--;
    }
    self.headNode = currentNode;
}

@end
