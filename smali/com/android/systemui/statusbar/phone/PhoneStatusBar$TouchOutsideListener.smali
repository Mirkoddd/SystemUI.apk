.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchOutsideListener"
.end annotation


# instance fields
.field private mMsg:I

.field private mPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILcom/android/systemui/recent/RecentsPanelView;)V
    .registers 4
    .parameter
    .parameter "msg"
    .parameter "panel"

    .prologue
    .line 3265
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3266
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;->mMsg:I

    .line 3267
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;->mPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 3268
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "ev"

    .prologue
    .line 3271
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3272
    .local v0, action:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    if-nez v0, :cond_2f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;->mPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->isInContentArea(II)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 3275
    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;->mMsg:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 3276
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;->mMsg:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    .line 3277
    const/4 v1, 0x1

    .line 3279
    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method
