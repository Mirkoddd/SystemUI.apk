.class Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .registers 3
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 174
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .parameter "selfChange"

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 180
    :try_start_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, brightness:I
    invoke-static {}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$300()I

    move-result v2

    sub-int v1, v0, v2

    .line 183
    .local v1, val:I
    if-gez v1, :cond_20

    .line 184
    const/4 v1, 0x0

    .line 187
    :cond_20
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    const/4 v3, 0x1

    #setter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mSetValueByObserver:Z
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$402(Lcom/android/systemui/statusbar/policy/BrightnessController;Z)Z

    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    const/4 v3, 0x0

    #setter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mSetValueByObserver:Z
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$402(Lcom/android/systemui/statusbar/policy/BrightnessController;Z)Z

    .line 192
    const-string v2, "StatusBar.BrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BrightnessObserver onChange() - val : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_4d} :catch_4e

    .line 196
    .end local v0           #brightness:I
    .end local v1           #val:I
    :cond_4d
    :goto_4d
    return-void

    .line 194
    :catch_4e
    move-exception v2

    goto :goto_4d
.end method
