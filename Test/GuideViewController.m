//
//  GuideViewController.m
//  Test
//
//  Created by 陆思 on 15/8/20.
//  Copyright (c) 2015年 陆思. All rights reserved.
//

#import "GuideViewController.h"

@interface GuideViewController ()<UIScrollViewDelegate>
{
    UIScrollView *_scrollView;
}
@end

@implementation GuideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor clearColor];
    NSLog(@"bounds %f",self.view.bounds.size.width);
     NSLog(@"bounds %f",self.view.bounds.size.height);
    _scrollView=[[UIScrollView alloc] initWithFrame:self.view.bounds];
    _scrollView.pagingEnabled=YES;
    _scrollView.showsHorizontalScrollIndicator=NO;
    _scrollView.delegate=self;
    _scrollView.contentSize=CGSizeMake(kScreenWidth*5, kScreenHeight);
    [self.view addSubview:_scrollView];
    
    for (int i=0; i<5; i++) {
        UIImageView *imgView=[[UIImageView alloc] initWithFrame:CGRectMake(i*kScreenWidth, 0, kScreenWidth, kScreenHeight)];
        imgView.backgroundColor=[UIColor redColor];
        NSString *imageName=[NSString stringWithFormat:@"guide%d",i+1];
        imgView.image=[UIImage imageNamed:imageName];
        [_scrollView addSubview:imgView];
    }
   
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
