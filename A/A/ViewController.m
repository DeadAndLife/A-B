//
//  ViewController.m
//  A
//
//  Created by qingyun on 16/6/28.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFild;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)action:(id)sender {
    //打开B应用,有B应用计算结果,并且返回
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"b://%@", _textFild.text]];//"b"为B应用的url schemes
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
