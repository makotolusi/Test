//
//  ItemView.h
//  Test
//
//  Created by 陆思 on 15/8/23.
//  Copyright (c) 2015年 陆思. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ItemView;
@protocol ItemViewDelegate <NSObject>

-(void) didSelectedItemView:(ItemView *) itemView;

@end

@interface ItemView : UIView
{
    @private
    UIButton *_itemButton;
    UILabel *_itemLable;
}
@property (nonatomic,weak) id <ItemViewDelegate> delegate;

-(void) setItemImage:(UIImage *)image forState:(UIControlState)state;

-(void) setItemTitle:(NSString *)titile;

-(void) setitemSelected:(BOOL)selected;

@end
