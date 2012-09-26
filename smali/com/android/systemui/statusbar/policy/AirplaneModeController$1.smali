.class Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;
.super Ljava/lang/Object;
.source "AirplaneModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/AirplaneModeController;->unsafe(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AirplaneModeController;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->val$enabled:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    #getter for: Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$000(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->val$enabled:Z

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    :goto_11
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    const-string v1, "state"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->val$enabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    #getter for: Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->access$000(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    return-void

    .line 84
    .end local v0           #intent:Landroid/content/Intent;
    :cond_31
    const/4 v1, 0x0

    goto :goto_11
.end method
