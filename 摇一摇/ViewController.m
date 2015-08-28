//
//  ViewController.m
//  摇一摇
//
//  Created by ZZBelieve on 15/8/28.
//  Copyright (c) 2015年 galaxy-link. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *ShakeLabel;
@end

@implementation ViewController



- (BOOL)canBecomeFirstResponder{

 
    return YES;
}


/**
 *  开始摇动
 *
 *  @param motion <#motion description#>
 *  @param event  <#event description#>
 */
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{


    NSLog(@"开始摇动");

    self.ShakeLabel.text = @"开始摇动";
    
}

/**
 *  结束摇动
 *
 *  @param motion <#motion description#>
 *  @param event  <#event description#>
 */
- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{


    NSLog(@"结束摇动");
    self.ShakeLabel.text = @"结束摇动";

    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
}

/**
 *  取消摇动
 *
 *  @param motion <#motion description#>
 *  @param event  <#event description#>
 */
- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{

    NSLog(@"取消摇动");


}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
