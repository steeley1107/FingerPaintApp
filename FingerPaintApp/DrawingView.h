//
//  DrawingView.h
//  FingerPaintApp
//
//  Created by Steele on 2015-10-30.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <UIKit/UIKit.h>


// add a protocol to define how drawingview gets it's data
@protocol DrawingDelegate <NSObject>
- (NSArray *)drawLines;
@end

@interface DrawingView : UIView

@property (nonatomic,strong) id <DrawingDelegate> delegate;


@end
