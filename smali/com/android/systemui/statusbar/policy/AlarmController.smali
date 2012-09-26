.class public Lcom/android/systemui/statusbar/policy/AlarmController;
.super Landroid/content/BroadcastReceiver;
.source "AlarmController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.AlarmController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AlarmController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconId:I

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AlarmController;->mIconViews:Ljava/util/ArrayList;

    .line 38
    const v1, 0x7f020067

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AlarmController;->mIconId:I

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AlarmController;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AlarmController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, action:Ljava/lang/String;
    const-string v5, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 55
    const-string v5, "alarmSet"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 56
    .local v2, alarmSet:Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AlarmController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 57
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    if-ge v3, v0, :cond_35

    .line 58
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AlarmController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 59
    .local v4, v:Landroid/widget/ImageView;
    iget v5, p0, Lcom/android/systemui/statusbar/policy/AlarmController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    if-eqz v2, :cond_32

    move v5, v6

    :goto_2c
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 60
    :cond_32
    const/16 v5, 0x8

    goto :goto_2c

    .line 63
    .end local v0           #N:I
    .end local v2           #alarmSet:Z
    .end local v3           #i:I
    .end local v4           #v:Landroid/widget/ImageView;
    :cond_35
    return-void
.end method
