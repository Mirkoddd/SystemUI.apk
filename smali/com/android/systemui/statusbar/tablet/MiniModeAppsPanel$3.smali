.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;
.super Landroid/content/BroadcastReceiver;
.source "MiniModeAppsPanel.java"


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
    .line 593
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 595
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 600
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->updateImageOfMiniModeAppsPanel()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 601
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->refreshApplicationList()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 602
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->closeEditPanel()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 603
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->updateTextOfMiniModeAppsPanel()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 605
    :cond_20
    return-void
.end method
