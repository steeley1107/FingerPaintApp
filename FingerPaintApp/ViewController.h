//
//  ViewController.h
//  FingerPaintApp
//
//  Created by Steele on 2015-10-30.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrawingView.h"

@interface ViewController : UIViewController <DrawingDelegate>



@property (nonatomic,strong) id <DrawingDelegate> delegate;


@end

