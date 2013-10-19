UINavigationItem-AnimatedPrompt
===============================

This UINavigationItem Category adds the ability to set the prompt with an animation and provides a completion block so you can dismiss the view controller after the prompt is gone.


To Use:

Import Header File:

    #import "UINavigationItem+AnimatedPrompt.h"

Set Prompt and Completion Block:

    __weak id weakSelf = self;
    [self.navigationItem setPrompt:nil animated:YES completion:^{
        [weakSelf performSegueWithIdentifier:@"someSegue" sender:nil];
    }];
