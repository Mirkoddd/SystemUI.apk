.class Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutomaticObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .registers 3
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 202
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .parameter "selfChange"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 208
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 210
    :try_start_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_24

    const/4 v0, 0x1

    .line 213
    .local v0, automatic:Z
    :goto_1a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V
    :try_end_23
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_b .. :try_end_23} :catch_26

    .line 219
    .end local v0           #automatic:Z
    :cond_23
    :goto_23
    return-void

    .line 210
    :cond_24
    const/4 v0, 0x0

    goto :goto_1a

    .line 215
    :catch_26
    move-exception v1

    .line 216
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "StatusBar.BrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SettingNotFoundException occurs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method
