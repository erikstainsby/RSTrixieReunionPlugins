//
//  ReactionSlideUp.m
//  ReactionSlideUp
//
//  Created by Erik Stainsby on 12-03-01.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionSlideUp.h"

@interface ReactionSlideUp ()

@end

@implementation ReactionSlideUp

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Slide Up"];
		[self setAction:@"slideUp"];
    }
    
    return self;
}

@end
