//
//  Line.h
//  FingerPaintApp
//
//  Created by Steele on 2015-10-30.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Line : NSObject

@property (nonatomic) UIBezierPath *path;
@property (nonatomic) UIColor *color;

- (instancetype)initWithPath: (UIBezierPath *)path andColor:(UIColor *)color;

@end
