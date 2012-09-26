.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrayIconOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 1486
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1486
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 1489
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3c

    .line 1493
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_a4

    .line 1558
    :cond_12
    :goto_12
    return v8

    .line 1497
    :pswitch_13
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1498
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1499
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_12

    .line 1505
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_32
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_12

    .line 1515
    :cond_3c
    if-eqz p1, :cond_12

    .line 1517
    move-object v3, p1

    .line 1518
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0f0050

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1520
    .local v0, appIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_b0

    goto :goto_12

    .line 1524
    :pswitch_50
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1526
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1528
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    iput-boolean v8, v4, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    goto :goto_12

    .line 1534
    :pswitch_63
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    if-eqz v4, :cond_12

    .line 1536
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1538
    .local v1, componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1541
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v4

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$2900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;
    invoke-static {v7}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/minimode/manager/MiniModeAppManager;->move(Landroid/content/ComponentName;II)V

    goto/16 :goto_12

    .line 1549
    .end local v1           #componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :pswitch_99
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1551
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    iput-boolean v8, v4, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    goto/16 :goto_12

    .line 1493
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_13
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch

    .line 1520
    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_99
        :pswitch_63
        :pswitch_99
    .end packed-switch
.end method
