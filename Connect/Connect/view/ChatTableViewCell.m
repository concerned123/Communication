//
//  ChatTableViewCell.m
//  Connect
//
//  Created by 胡凡 on 16/7/6.
//  Copyright © 2016年 胡凡. All rights reserved.
//

#import "ChatTableViewCell.h"

@implementation ChatTableViewCell



-(void)setMessage:(EMMessage *)message
{
    _message  = message;
    //获取消息体
    id body =message.body;
    
    
    if ([body isKindOfClass:[EMTextMessageBody class]]) {
        EMTextMessageBody *textBody= body;
        
        self.reciveLabel.text = textBody.text;
    }
    
    else if([body isKindOfClass:[EMVoiceMessageBody class]])
    {
    
        self.reciveLabel.text = @"[语音]";
    }
    else
    {
        self.reciveLabel.text = @" 未知的类型";
    }
    

}

#pragma mark 返回语音的富文本

-(NSAttributedString *)voiceAtt
{
    
    NSMutableAttributedString *voice = [NSMutableAttributedString new];
    //接收方，图片 +文字
    if ([self.reuseIdentifier isEqualToString:IDre]) {
        
    }
    //发送方。反之
    else
    {
        
    }
    return nil;
}


-(CGFloat)cellHeight
{
    //重新布局子控件
    [self layoutIfNeeded];
    return 5+10+self.reciveLabel.bounds.size.height +10+5;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
