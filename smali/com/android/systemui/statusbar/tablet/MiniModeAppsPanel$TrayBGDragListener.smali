.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrayBGDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 1821
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1821
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 10
    .parameter "targetView"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1826
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 1829
    .local v0, action:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    invoke-static {v5, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/view/DragEvent;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1873
    :cond_e
    :goto_e
    return v3

    .line 1835
    :cond_f
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v2

    .line 1836
    .local v2, sourceView:Landroid/view/View;
    if-eqz v2, :cond_e

    .line 1838
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    if-eqz v5, :cond_e

    .line 1842
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1844
    .local v1, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    packed-switch v0, :pswitch_data_6e

    goto :goto_e

    .line 1847
    :pswitch_2f
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_e

    move v3, v4

    .line 1848
    goto :goto_e

    :pswitch_3d
    move v3, v4

    .line 1857
    goto :goto_e

    .line 1860
    :pswitch_3f
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1861
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1862
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1863
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 1865
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    move v3, v4

    .line 1867
    goto :goto_e

    .line 1844
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_3d
        :pswitch_3f
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method
