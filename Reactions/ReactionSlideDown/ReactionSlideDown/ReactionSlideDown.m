//
//  ReactionSlideDown.m
//  ReactionSlideDown
//
//  Created by Erik Stainsby on 12-03-01.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionSlideDown.h"

@interface ReactionSlideDown ()

@end

@implementation ReactionSlideDown

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Slide Down"];
		[self setAction:@"slideDown"];
    }
    
    return self;
}

@end
