.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMiniAppFocusChanged(Landroid/content/ComponentName;Z)Z
    .registers 7
    .parameter "cn"
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x1

    .line 522
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    move-result-object v0

    .line 523
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-nez v0, :cond_12

    .line 524
    const-string v2, "MiniModeAppsPanel"

    const-string v3, "focusChanged : findComponentDescriptionByName return NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v2, 0x0

    .line 533
    :goto_11
    return v2

    .line 528
    :cond_12
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setFocus(Z)V

    .line 530
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 531
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 532
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11
.end method
