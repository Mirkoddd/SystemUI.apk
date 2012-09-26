.class public Lcom/android/systemui/statusbar/tablet/HeightReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeightReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.HeightReceiver"


# instance fields
.field mContext:Landroid/content/Context;

.field mHeight:I

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mPlugged:Z

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mWindowManager:Landroid/view/WindowManager;

    .line 49
    return-void
.end method

.method private setPlugged(Z)V
    .registers 2
    .parameter "plugged"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mPlugged:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->updateHeight()V

    .line 90
    return-void
.end method


# virtual methods
.method public addOnBarHeightChangedListener(Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;->onBarHeightChanged(I)V

    .line 54
    return-void
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, plugged:Z
    if-eqz p2, :cond_a

    .line 74
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->setPlugged(Z)V

    .line 78
    return-void
.end method

.method public registerReceiver()V
    .registers 4

    .prologue
    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 84
    .local v1, val:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public removeOnBarHeightChangedListener(Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public updateHeight()V
    .registers 12

    .prologue
    .line 93
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 95
    .local v6, res:Landroid/content/res/Resources;
    const/4 v2, -0x1

    .line 96
    .local v2, height:I
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mPlugged:Z

    if-eqz v8, :cond_2c

    .line 97
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    .local v4, metrics:Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 99
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 102
    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 103
    .local v7, shortSide:I
    invoke-virtual {v1}, Landroid/view/Display;->getRawExternalWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/Display;->getRawExternalHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 108
    .end local v1           #display:Landroid/view/Display;
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    .end local v7           #shortSide:I
    :cond_2c
    const v8, 0x105000a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 110
    .local v5, minHeight:I
    if-ge v2, v5, :cond_36

    .line 111
    move v2, v5

    .line 113
    :cond_36
    const-string v8, "StatusBar.HeightReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resizing status bar plugged="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mPlugged:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " old="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    .line 117
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 118
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6f
    if-ge v3, v0, :cond_7f

    .line 119
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;

    invoke-interface {v8, v2}, Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;->onBarHeightChanged(I)V

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 121
    :cond_7f
    return-void
.end method
