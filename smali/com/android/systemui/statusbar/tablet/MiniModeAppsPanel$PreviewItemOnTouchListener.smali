.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;
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
    name = "PreviewItemOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1456
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 1459
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 1463
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 1482
    :cond_12
    :goto_12
    return v4

    .line 1467
    :pswitch_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1468
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1469
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_12

    .line 1475
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_32
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_12

    .line 1463
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method
