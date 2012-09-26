.class public Lcom/android/systemui/statusbar/policy/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;,
        Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;
    }
.end annotation


# static fields
.field private static final ACTION_POWER_SIOP_DISABLE:Ljava/lang/String; = "android.intent.action.POWER_SIOP_DISABLE"

.field private static final ACTION_POWER_SIOP_ENABLE:Ljava/lang/String; = "android.intent.action.POWER_SIOP_ENABLE"

.field private static final LIMITED_BACKLIGHT:I = 0x9d

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static MINIMUM_BACKLIGHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StatusBar.BrightnessController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-BrightnessController"


# instance fields
.field private mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

.field private mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

.field private mPower:Landroid/os/IPowerManager;

.field private mSetValueByObserver:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/16 v0, 0x1e

    sput v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .registers 13
    .parameter "context"
    .parameter "control"

    .prologue
    const/4 v7, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSetValueByObserver:Z

    .line 224
    new-instance v6, Lcom/android/systemui/statusbar/policy/BrightnessController$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/BrightnessController$2;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x111000f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 84
    .local v1, automaticAvailable:Z
    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 86
    if-eqz v1, :cond_9e

    .line 89
    :try_start_2a
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "screen_brightness_mode"

    invoke-static {v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2a .. :try_end_35} :catch_99

    move-result v0

    .line 94
    .local v0, automatic:I
    :goto_36
    if-eqz v0, :cond_9c

    const/4 v6, 0x1

    :goto_39
    invoke-virtual {p2, v6}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    .line 102
    .end local v0           #automatic:I
    :goto_3c
    const-string v6, "ro.lcd_min_brightness"

    sget v8, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    .line 106
    :try_start_46
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "screen_brightness"

    invoke-static {v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_46 .. :try_end_51} :catch_a2

    move-result v5

    .line 112
    .local v5, value:I
    :goto_52
    sget v6, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    rsub-int v6, v6, 0xff

    invoke-virtual {p2, v6}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    .line 113
    sget v6, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int v6, v5, v6

    invoke-virtual {p2, v6}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V

    .line 115
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    .line 118
    new-instance v6, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    .line 119
    new-instance v6, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    .line 124
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "screen_brightness_mode"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    invoke-virtual {v6, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.POWER_SIOP_ENABLE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v6, "android.intent.action.POWER_SIOP_DISABLE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void

    .line 91
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v5           #value:I
    :catch_99
    move-exception v4

    .line 92
    .local v4, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #automatic:I
    goto :goto_36

    .end local v4           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_9c
    move v6, v7

    .line 94
    goto :goto_39

    .line 96
    .end local v0           #automatic:I
    :cond_9e
    invoke-virtual {p2, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    goto :goto_3c

    .line 108
    :catch_a2
    move-exception v2

    .line 109
    .local v2, ex:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v5, 0xff

    .restart local v5       #value:I
    goto :goto_52
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/BrightnessController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSetValueByObserver:Z

    return p1
.end method

.method private setBrightness(I)V
    .registers 5
    .parameter "brightness"

    .prologue
    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 165
    const-string v0, "StatusBar.BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBacklightBrightness() - brightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 168
    :goto_1d
    return-void

    .line 166
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method private setMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V
    .registers 7
    .parameter "view"
    .parameter "tracking"
    .parameter "automatic"
    .parameter "value"

    .prologue
    .line 136
    if-eqz p3, :cond_11

    const/4 v1, 0x1

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setMode(I)V

    .line 138
    if-nez p3, :cond_10

    .line 139
    sget v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    add-int v0, p4, v1

    .line 141
    .local v0, val:I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSetValueByObserver:Z

    if-eqz v1, :cond_13

    .line 155
    .end local v0           #val:I
    :cond_10
    :goto_10
    return-void

    .line 136
    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    .line 143
    .restart local v0       #val:I
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightness(I)V

    .line 145
    if-nez p2, :cond_10

    .line 146
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessController$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$1;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_10
.end method

.method public setMaxBrightness(I)V
    .registers 5
    .parameter "maxLevel"

    .prologue
    .line 239
    sget v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    if-lt p1, v0, :cond_2d

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2d

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    sget v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    .line 241
    const-string v0, "STATUSBAR-BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S.M.B.:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2d
    return-void
.end method

.method public syncBrightness()V
    .registers 5

    .prologue
    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 251
    .local v0, brightness:I
    sget v2, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int v1, v0, v2

    .line 252
    .local v1, val:I
    if-gez v1, :cond_f

    .line 253
    const/4 v1, 0x0

    .line 255
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V
    :try_end_14
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_14} :catch_15

    .line 258
    .end local v0           #brightness:I
    .end local v1           #val:I
    :goto_14
    return-void

    .line 256
    :catch_15
    move-exception v2

    goto :goto_14
.end method
