.class public Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "DrivingModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;
    }
.end annotation


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-DrivingModeController"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDrivingModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 37
    const/4 v2, 0x0

    const v3, 0x7f080092

    const v4, 0x7f02014e

    const v5, 0x7f02014d

    const v6, 0x7f02014c

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mDrivingModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;

    .line 46
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "driving_mode_on"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_40

    move v0, v9

    :goto_30
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->setActivateStatus(I)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "driving_mode_on"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_42

    :goto_3d
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mState:Z

    .line 51
    return-void

    .line 47
    :cond_40
    const/4 v0, 0x2

    goto :goto_30

    :cond_42
    move v9, v7

    .line 49
    goto :goto_3d
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private getMode()I
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "driving_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "driving_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    return-void
.end method


# virtual methods
.method public deinit()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mDrivingModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 61
    return-void
.end method

.method public init()V
    .registers 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "driving_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mDrivingModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$DrivingModeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    return-void
.end method

.method public onClick(Z)V
    .registers 3
    .parameter "state"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_e

    .line 65
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->setActivateStatus(I)V

    .line 66
    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->setMode(I)V

    .line 68
    :cond_e
    return-void

    .line 66
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method
