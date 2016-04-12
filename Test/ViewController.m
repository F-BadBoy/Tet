//
//  ViewController.m
//  Test
//
//  Created by 冯一男 on 15/12/24.
//  Copyright © 2015年 冯一男. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+CustomColors.h"
#import "ShapedImageView.h"
#import "ShapedView.h"
#import "ViewController111111.h"

@interface ViewController ()
{
    int count;
    UILabel *lal;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    count = 0;
    
    NSString *str = [NSString stringWithFormat:NSLocalizedString(@"a", nil),5];
    
    NSLog(@"%@",str);
    UIImage *image = [UIImage imageNamed:@"Icon-60"];
    
    // 设置上左下右边距
    CGFloat topMode= image.size.height * 0.5;
    CGFloat leftMode= image.size.width * 0.5;
    CGFloat bottomMode= image.size.height * 0.5;
    CGFloat rightMode= image.size.width * 0.5;
    
    UIEdgeInsets edgeInsetsMode= UIEdgeInsetsMake(topMode, leftMode, bottomMode, rightMode);
    
    // 拉伸图片
    UIImage *edgeModeImage = [image resizableImageWithCapInsets:edgeInsetsMode resizingMode:UIImageResizingModeStretch];
    UIImageView *bubbleImageView1 = [[ShapedImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
//    bubbleImageView1.backgroundColor = [UIColor blueColor];
//    bubbleImageView1.image = [image stretchableImageWithLeftCapWidth:floorf(image.size.width/2) topCapHeight:floorf(image.size.height/2)];
    bubbleImageView1.image = image;
    UIImage *image2 = [UIImage imageNamed:@"bubble-flat-outgoing"];
    UIImageView *bubbleImageView2 = [[UIImageView alloc] initWithImage:[image2 stretchableImageWithLeftCapWidth:floorf(image2.size.width/2) topCapHeight:floorf(image2.size.height/2)]];
//    bubbleImageView1.frame = CGRectMake(100, 100, 200, 100);
    bubbleImageView2.frame = CGRectMake(100, 100, 200, 100);
//    bubbleImageView1.backgroundColor = [UIColor redColor];
    [self.view addSubview:bubbleImageView2];
//    [bubbleImageView2 addSubview:bubbleImageView1];
    
    ShapedView *view = [[ShapedView alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
//    view.backgroundColor = [UIColor blueColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    label.backgroundColor = [UIColor redColor];
//    [view addSubview:label];
    [bubbleImageView2 addSubview:view];
    
    NSString *stringsss = [NSString stringWithFormat:@"\"%@\"",@"hhhh"];
    NSLog(@"%@",stringsss);
    
    NSString *selectGroupMsgSqlStr=[NSString stringWithFormat:@"select count(*) from GroupChatMessage where groupMucId not in (%@) and readMark=%d and myJID =\"%@\" and groupMucId in (select chatUserName from ChatBuddy where type='groupchat') ",@"123",0,@"456"];
    NSLog(@"%@",selectGroupMsgSqlStr);
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(200, 300, 200, 50)];
    label1.backgroundColor = [UIColor blueColor];
    label1.textColor = [UIColor grayColor];
    [self.view addSubview:label1];
    lal = label1;
//    NSString *allMsg = @"[草稿]123456";
//    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:allMsg];
//    NSRange range = NSMakeRange(0, @"[草稿]".length);
//    [attrString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:range];
//    label1.attributedText = attrString;
    
    [NSTimer scheduledTimerWithTimeInterval:1
                                     target:self
                                   selector:@selector(doSomethings)
                                   userInfo:self
                                    repeats:YES];
    
    UITextField *txt = [[UITextField alloc] initWithFrame:CGRectMake(200, 400, 200, 40)];
    txt.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:txt];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(100, 300, 50, 200)];
    scrollView.contentSize = CGSizeMake(0, 1000);
    scrollView.backgroundColor = [UIColor redColor];
    [self.view addSubview:scrollView];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 150, 100, 100);
    btn.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(tiao) forControlEvents:UIControlEventTouchUpInside];
}

- (void)doSomethings
{
    lal.text = [NSString stringWithFormat:@"%d",++count];
    NSLog(@"%d-----------%@ ________%@",count,[NSThread currentThread],[NSThread mainThread]);
}

- (void)tiao
{
    ViewController111111 *vc = [[ViewController111111 alloc] init];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
