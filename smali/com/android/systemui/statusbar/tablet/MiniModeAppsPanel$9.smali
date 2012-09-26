.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$9;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$9;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "e"

    .prologue
    .line 799
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 811
    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 801
    :pswitch_9
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->supportHapticFeedback:Z

    if-eqz v0, :cond_7

    .line 802
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_7

    .line 808
    :pswitch_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$9;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->playTrayCloseSound()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    goto :goto_7

    .line 799
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method
