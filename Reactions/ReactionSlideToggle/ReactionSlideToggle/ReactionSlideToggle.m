//
//  ReactionSlideToggle.m
//  ReactionSlideToggle
//
//  Created by Erik Stainsby on 12-03-09.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionSlideToggle.h"

@interface ReactionSlideToggle ()

@end

@implementation ReactionSlideToggle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Slide Toggle"];
		[self setAction:@"slideToggle"];
    }
    
    return self;
}

@end
