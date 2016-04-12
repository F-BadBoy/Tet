//
//  ViewController111111.m
//  Test
//
//  Created by 冯一男 on 16/3/24.
//  Copyright © 2016年 冯一男. All rights reserved.
//

#import "ViewController111111.h"

@interface ViewController111111 ()

@end

@implementation ViewController111111

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 100, 50)];
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 150, 100, 100);
    btn.backgroundColor = [UIColor blueColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(tiao) forControlEvents:UIControlEventTouchUpInside];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(100, 300, 50, 200)];
    scrollView.contentSize = CGSizeMake(0, 1000);
    scrollView.backgroundColor = [UIColor redColor];
    [self.view addSubview:scrollView];
}

- (void)tiao
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
