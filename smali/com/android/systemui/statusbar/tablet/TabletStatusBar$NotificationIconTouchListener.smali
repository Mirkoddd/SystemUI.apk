.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationIconTouchListener"
.end annotation


# instance fields
.field mInitialTouchX:F

.field mInitialTouchY:F

.field mPeekIndex:I

.field mTouchSlop:I

.field mVT:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .registers 3
    .parameter

    .prologue
    .line 2292
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2293
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mTouchSlop:I

    .line 2294
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v11, 0x3e8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v10, 0x3ea

    .line 2297
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1e

    move v5, v6

    .line 2298
    .local v5, peeking:Z
    :goto_13
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v3

    .line 2299
    .local v3, panelShowing:Z
    if-eqz v3, :cond_20

    .line 2385
    :goto_1d
    return v7

    .end local v3           #panelShowing:Z
    .end local v5           #peeking:Z
    :cond_1e
    move v5, v7

    .line 2297
    goto :goto_13

    .line 2301
    .restart local v3       #panelShowing:Z
    .restart local v5       #peeking:Z
    :cond_20
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v2

    .line 2302
    .local v2, numIcons:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    int-to-float v9, v2

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v1, v8

    .line 2303
    .local v1, newPeekIndex:I
    add-int/lit8 v8, v2, -0x1

    if-le v1, v8, :cond_d3

    add-int/lit8 v1, v2, -0x1

    .line 2306
    :cond_3f
    :goto_3f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2307
    .local v0, action:I
    packed-switch v0, :pswitch_data_158

    goto :goto_1d

    .line 2309
    :pswitch_47
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    .line 2310
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mInitialTouchX:F

    .line 2311
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mInitialTouchY:F

    .line 2312
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    .line 2319
    :pswitch_5c
    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    if-eq v1, v7, :cond_7e

    .line 2320
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    .line 2323
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2324
    .local v4, peekMsg:Landroid/os/Message;
    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    iput v7, v4, Landroid/os/Message;->arg1:I

    .line 2326
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2328
    if-eqz v5, :cond_d8

    .line 2330
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendMessage(Landroid/os/Message;)Z

    .line 2338
    .end local v4           #peekMsg:Landroid/os/Message;
    :cond_7e
    :goto_7e
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_d0

    .line 2339
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2340
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2342
    if-nez v3, :cond_d0

    if-eqz v5, :cond_a2

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationFlingVelocity:I

    neg-int v8, v8

    mul-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_b2

    :cond_a2
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationFlingVelocity:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_d0

    .line 2345
    :cond_b2
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2346
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2347
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    const/16 v8, 0x3eb

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 2348
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    :cond_d0
    move v7, v6

    .line 2351
    goto/16 :goto_1d

    .line 2304
    .end local v0           #action:I
    :cond_d3
    if-gez v1, :cond_3f

    const/4 v1, 0x0

    goto/16 :goto_3f

    .line 2333
    .restart local v0       #action:I
    .restart local v4       #peekMsg:Landroid/os/Message;
    :cond_d8
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7e

    .line 2354
    .end local v4           #peekMsg:Landroid/os/Message;
    :pswitch_e2
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2355
    if-nez v5, :cond_141

    .line 2356
    if-ne v0, v6, :cond_141

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mInitialTouchX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mTouchSlop:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_141

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mInitialTouchY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_153

    iget v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mTouchSlop:I

    :goto_110
    int-to-float v8, v8

    cmpg-float v8, v9, v8

    if-gez v8, :cond_141

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_141

    .line 2365
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2366
    .restart local v4       #peekMsg:Landroid/os/Message;
    iget v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mPeekIndex:I

    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 2367
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2368
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendMessage(Landroid/os/Message;)Z

    .line 2370
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2371
    invoke-virtual {p1, v7}, Landroid/view/View;->playSoundEffect(I)V

    .line 2373
    const/4 v5, 0x1

    .line 2377
    .end local v4           #peekMsg:Landroid/os/Message;
    :cond_141
    if-eqz v5, :cond_148

    .line 2378
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->resetNotificationPeekFadeTimer()V

    .line 2381
    :cond_148
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 2382
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mVT:Landroid/view/VelocityTracker;

    move v7, v6

    .line 2383
    goto/16 :goto_1d

    .line 2356
    :cond_153
    iget v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;->mTouchSlop:I

    div-int/lit8 v8, v8, 0x3

    goto :goto_110

    .line 2307
    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_47
        :pswitch_e2
        :pswitch_5c
        :pswitch_e2
        :pswitch_5c
    .end packed-switch
.end method
