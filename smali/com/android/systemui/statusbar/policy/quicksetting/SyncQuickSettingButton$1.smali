.class Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "SyncQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, action:Ljava/lang/String;
    sget-object v1, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 41
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 42
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->setActivateStatus(I)V

    .line 47
    :cond_1c
    :goto_1c
    return-void

    .line 44
    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->setActivateStatus(I)V

    goto :goto_1c
.end method
