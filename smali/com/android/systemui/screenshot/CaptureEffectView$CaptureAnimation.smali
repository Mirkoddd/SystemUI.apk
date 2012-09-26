.class Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;
.super Landroid/view/animation/Animation;
.source "CaptureEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/CaptureEffectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureAnimation"
.end annotation


# instance fields
.field final MODE_ALPHA:I

.field final MODE_TRANSLATE:I

.field mMode:I

.field final synthetic this$0:Lcom/android/systemui/screenshot/CaptureEffectView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/CaptureEffectView;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 132
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 127
    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->MODE_TRANSLATE:I

    .line 128
    iput v2, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->MODE_ALPHA:I

    .line 130
    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->mMode:I

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->setFillAfter(Z)V

    .line 135
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->setDuration(J)V

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->setRepeatCount(I)V

    .line 138
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 8
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/16 v2, 0xff

    .line 143
    const-string v0, "CaptureEffectView"

    const-string v1, "applyTransformation start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->mMode:I

    packed-switch v0, :pswitch_data_7a

    .line 157
    :goto_11
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_18

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->mMode:I

    .line 158
    :cond_18
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 159
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    #calls: Lcom/android/systemui/screenshot/CaptureEffectView;->clearCaptureBitmap()V
    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$300(Lcom/android/systemui/screenshot/CaptureEffectView;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    #getter for: Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z
    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$400(Lcom/android/systemui/screenshot/CaptureEffectView;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 161
    const-string v0, "CaptureEffectView"

    const-string v1, "isFirst true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    #setter for: Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z
    invoke-static {v0, v4}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$402(Lcom/android/systemui/screenshot/CaptureEffectView;Z)Z

    .line 171
    :cond_37
    :goto_37
    return-void

    .line 148
    :pswitch_38
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    #getter for: Lcom/android/systemui/screenshot/CaptureEffectView;->mDirection:I
    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$000(Lcom/android/systemui/screenshot/CaptureEffectView;)I

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    #setter for: Lcom/android/systemui/screenshot/CaptureEffectView;->mTranslateOffset:F
    invoke-static {v0, p1}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$102(Lcom/android/systemui/screenshot/CaptureEffectView;F)F

    goto :goto_11

    .line 149
    :cond_46
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    sub-float v1, v3, p1

    #setter for: Lcom/android/systemui/screenshot/CaptureEffectView;->mTranslateOffset:F
    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$102(Lcom/android/systemui/screenshot/CaptureEffectView;F)F

    goto :goto_11

    .line 153
    :pswitch_4e
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    const/high16 v1, 0x434c

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    #setter for: Lcom/android/systemui/screenshot/CaptureEffectView;->mGradientColor2:I
    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$202(Lcom/android/systemui/screenshot/CaptureEffectView;I)I

    goto :goto_11

    .line 165
    :cond_5c
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    #getter for: Lcom/android/systemui/screenshot/CaptureEffectView;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;
    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$500(Lcom/android/systemui/screenshot/CaptureEffectView;)Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 166
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    #setter for: Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z
    invoke-static {v0, v4}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$402(Lcom/android/systemui/screenshot/CaptureEffectView;Z)Z

    .line 167
    const-string v0, "CaptureEffectView"

    const-string v1, "onFinish called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    #getter for: Lcom/android/systemui/screenshot/CaptureEffectView;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;
    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$500(Lcom/android/systemui/screenshot/CaptureEffectView;)Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;->onFinish()V

    goto :goto_37

    .line 145
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_38
        :pswitch_4e
    .end packed-switch
.end method
