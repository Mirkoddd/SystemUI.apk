.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$9;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .registers 2
    .parameter

    .prologue
    .line 2016
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$9;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "e"

    .prologue
    .line 2019
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 2031
    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 2022
    :pswitch_9
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->supportHapticFeedback:Z

    if-eqz v0, :cond_7

    .line 2024
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_7

    .line 2019
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
