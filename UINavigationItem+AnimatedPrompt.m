//
//  UINavigationItem+AnimatedPrompt.m
//
//  Created by Michael Kral on 10/18/13.
//  Copyright (c) 2013 Michael Kral. All rights reserved.
//

#import "UINavigationItem+AnimatedPrompt.h"


@implementation UINavigationItem (AnimatedPrompt)

-(void)setPrompt:(NSString *)prompt animated:(BOOL)animated completion:(void(^)(void))completion{
    
    if(animated){
        self.prompt = prompt;
    
        [self performSelector:@selector(callBlock:) withObject:completion afterDelay:0.3];
   
    }else{
        [UIView setAnimationsEnabled:NO];
        self.prompt = prompt;
        [UIView setAnimationsEnabled:YES];
        [self callBlock:completion];
        
    }
    
}

-(void)callBlock:(void(^)(void))completion{
    
    if(completion){
        completion();
    }
    
    
}

@end
