.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;
.super Landroid/os/Handler;
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
    .line 538
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 541
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_62

    .line 590
    :cond_7
    :goto_7
    return-void

    .line 545
    :pswitch_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 546
    .local v1, config:Landroid/content/res/Configuration;
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v3, :cond_28

    .line 548
    .local v3, isPortrait:Z
    :goto_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 550
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-nez v0, :cond_2a

    .line 551
    const-string v5, "MiniModeAppsPanel"

    const-string v6, "handleMessage : findComponentDescriptionByName return NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v3           #isPortrait:Z
    :cond_28
    move v3, v5

    .line 546
    goto :goto_1a

    .line 556
    .restart local v0       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .restart local v3       #isPortrait:Z
    :cond_2a
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updateResources(Z)V

    goto :goto_7

    .line 561
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v3           #isPortrait:Z
    :pswitch_2e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    .line 564
    .local v2, iconView:Landroid/view/View;
    if-eqz v2, :cond_7

    .line 567
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1600(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 568
    invoke-virtual {v2, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_7

    .line 575
    .end local v2           #iconView:Landroid/view/View;
    :pswitch_41
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    .line 578
    .local v4, previewView:Landroid/view/View;
    if-eqz v4, :cond_7

    .line 581
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 582
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 583
    .restart local v0       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->isChosen()Z

    move-result v6

    if-nez v6, :cond_7

    .line 584
    invoke-virtual {v4, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_7

    .line 541
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_8
        :pswitch_2e
        :pswitch_41
    .end packed-switch
.end method
