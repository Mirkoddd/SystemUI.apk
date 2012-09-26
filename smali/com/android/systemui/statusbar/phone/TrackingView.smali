.class public Lcom/android/systemui/statusbar/phone/TrackingView;
.super Landroid/widget/LinearLayout;
.source "TrackingView.java"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mStartX:I

.field mStartY:I

.field mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_14

    move v0, v1

    .line 46
    .local v0, down:Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1a

    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_13
    :goto_13
    return v1

    .line 45
    .end local v0           #down:Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_8

    .line 48
    .restart local v0       #down:Z
    :pswitch_16
    if-eqz v0, :cond_13

    goto :goto_13

    .line 46
    nop

    :pswitch_data_1a
    .packed-switch 0x4
        :pswitch_16
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onTrackingViewAttached()V

    .line 60
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 40
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 41
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 65
    if-nez p1, :cond_f

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrackingView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/TrackingView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/TrackingView$1;-><init>(Lcom/android/systemui/statusbar/phone/TrackingView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_f
    return-void
.end method
