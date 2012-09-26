.class public Lcom/android/systemui/statusbar/phone/TickerView;
.super Landroid/widget/TextSwitcher;
.source "TickerView.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

.field textNew:Landroid/widget/TextView;

.field textOld:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v1, Lcom/android/systemui/statusbar/phone/TickerView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/TickerView$1;-><init>(Lcom/android/systemui/statusbar/phone/TickerView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TickerView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TickerView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextSwitcher;->onSizeChanged(IIII)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->reflowText()V

    .line 51
    return-void
.end method

.method public setTicker(Lcom/android/systemui/statusbar/phone/Ticker;)V
    .registers 2
    .parameter "t"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 70
    return-void
.end method
