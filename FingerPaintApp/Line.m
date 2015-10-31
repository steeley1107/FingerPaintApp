//
//  Line.m
//  FingerPaintApp
//
//  Created by Steele on 2015-10-30.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "Line.h"

@implementation Line


- (instancetype)initWithPath: (UIBezierPath *)path andColor:(UIColor *)color
{
    self = [super init];
    if (self) {
        _path = path;
        _color = color;
    }
    return self;
}

@end
