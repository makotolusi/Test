//
//  MainViewController.m
//  Test
//
//  Created by 陆思 on 15/8/23.
//  Copyright (c) 2015年 陆思. All rights reserved.
//

#import "MainViewController.h"
#import "ItemView.h"
#import "BaseNavigationViewController.h"
#import "NewsViewController.h"
#import "TopViewController.h"
#import "ItemView.h"
@interface MainViewController ()<ItemViewDelegate>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadvc];
    [self loadTabBar];

}

-(void) loadTabBar{
    UIImageView *tabBarBg=[[UIImageView alloc] initWithFrame:self.tabBar.bounds];
    tabBarBg.image=[UIImage imageNamed:@"tab_bg_all"];
    [self.tabBar addSubview:tabBarBg];
    
//    NSArray *titles = @[@"首页", @"新闻", @"Top", @"影院", @"更多"];
    CGFloat width=kScreenWidth/5;
//    for (int i=0; i<5; i++) {
        ItemView *it=[[ItemView alloc] initWithFrame:CGRectMake(0*width, 0, width, kTabBarHeight)];
//        it.delegate=self;
        [it setItemImage:[UIImage imageNamed:@"movie_home"] forState:UIControlStateNormal];
        [it setItemTitle:@"Top"];
        [tabBarBg addSubview:it];
//    }
}
-(void) loadvc{
    NewsViewController *home=[[NewsViewController alloc] init];
    home.tabBarItem.title=@"xxxxx";
    home.view.backgroundColor=[UIColor greenColor];
    
    TopViewController *top=[[TopViewController alloc] init];
    top.tabBarItem.title=@"yyy";
    top.view.backgroundColor=[UIColor blueColor];
    NSArray *veiws=@[home];
    // Do any additional setup after loading the view.
    NSMutableArray *arr=[NSMutableArray arrayWithCapacity:[veiws count]];
    for(UIViewController *vc in arr) {
        
        BaseNavigationViewController *nav=[[BaseNavigationViewController  alloc] initWithRootViewController:home];
        [arr addObject:nav];
    }
    [self setViewControllers:arr];
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
-(void)_customTabBarView{
    
}


-(void) didSelectedItemView:(ItemView *) itemView{

}
@end
