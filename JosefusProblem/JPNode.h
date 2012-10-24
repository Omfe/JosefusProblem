//
//  JPNode.h
//  JosefusProblem
//
//  Created by Omar Gudino on 10/23/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JPNode : UIView

@property (strong, nonatomic) NSString *value;
@property (strong, nonatomic) JPNode *nextNode;

- (id)initWithValue:(NSString *)value;
- (void)flashBackground;

@end
