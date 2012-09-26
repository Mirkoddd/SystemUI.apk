.class public Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
.super Landroid/widget/FrameLayout;
.source "TabletStatusBarView.java"


# instance fields
.field private final MAX_PANELS:I

.field private mHandler:Landroid/os/Handler;

.field private final mIgnoreChildren:[Landroid/view/View;

.field private final mPanels:[Landroid/view/View;

.field private final mPos:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x5

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->MAX_PANELS:I

    .line 31
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    .line 32
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPos:[I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x5

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->MAX_PANELS:I

    .line 31
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    .line 32
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPos:[I

    .line 41
    return-void
.end method

.method private eventInside(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "v"
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 80
    .local v5, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 82
    .local v6, y:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPos:[I

    .line 83
    .local v2, p:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 85
    aget v1, v2, v8

    .line 86
    .local v1, l:I
    aget v4, v2, v7

    .line 87
    .local v4, t:I
    aget v9, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int v3, v9, v10

    .line 88
    .local v3, r:I
    aget v9, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int v0, v9, v10

    .line 90
    .local v0, b:I
    if-lt v5, v1, :cond_2e

    if-ge v5, v3, :cond_2e

    if-lt v6, v4, :cond_2e

    if-ge v6, v0, :cond_2e

    :goto_2d
    return v7

    :cond_2e
    move v7, v8

    goto :goto_2d
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "ev"

    .prologue
    const/16 v5, 0x7d0

    const/16 v4, 0x411

    const/16 v3, 0x3fd

    const/16 v2, 0x3e9

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5b

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_37
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_5b

    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    aget-object v1, v1, v0

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_58

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->eventInside(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 66
    const/4 v1, 0x1

    .line 74
    .end local v0           #i:I
    :goto_57
    return v1

    .line 58
    .restart local v0       #i:I
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 74
    .end local v0           #i:I
    :cond_5b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_57
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method public setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "index"
    .parameter "ignore"
    .parameter "panel"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    aput-object p2, v0, p1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    aput-object p3, v0, p1

    .line 105
    return-void
.end method
