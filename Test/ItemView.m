
//
//  ItemView.m
//  Test
//
//  Created by 陆思 on 15/8/23.
//  Copyright (c) 2015年 陆思. All rights reserved.
//

#import "ItemView.h"

@implementation ItemView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if(self){
        _itemButton=[UIButton buttonWithType:UIButtonTypeCustom];
        NSLog(@"%f",self.bounds.size.width);
        _itemButton.frame=self.bounds;
        _itemButton.imageEdgeInsets=UIEdgeInsetsMake(0.f, 0.f, 9.f, 0.f);
        [self addSubview:_itemButton];
        
        _itemLable=[[UILabel alloc] initWithFrame:CGRectMake(0.f, self.bounds.size.height-20.f, self.bounds.size.width, 20.f)];
        _itemLable.highlightedTextColor=[UIColor redColor];
        _itemLable.textAlignment=NSTextAlignmentCenter;
        _itemLable.textColor=[UIColor whiteColor];
        _itemLable.text=@"lusi";
//        _itemLable.backgroundColor=[UIColor clearColor];
        [self addSubview:_itemLable];
    }
    return self;
}

-(void) setItemImage:(UIImage *)image forState:(UIControlState)state{
    [_itemButton setImage:image forState:state];
}

-(void) setItemTitle:(NSString *)title{
    _itemLable.text=title;
}

-(void) setitemSelected:(BOOL)selected{
    _itemLable.highlighted=selected;
    _itemButton.selected=selected;
}
@end
