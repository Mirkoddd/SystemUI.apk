.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;
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
    name = "TrayContainerDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 1739
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1739
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 14
    .parameter "targetView"
    .parameter "event"

    .prologue
    const-wide/16 v9, 0x1f4

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1744
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 1747
    .local v0, action:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    invoke-static {v6, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/view/DragEvent;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 1816
    :cond_10
    :goto_10
    return v4

    .line 1753
    :cond_11
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v3

    .line 1754
    .local v3, sourceView:Landroid/view/View;
    if-eqz v3, :cond_10

    .line 1756
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    if-eqz v6, :cond_10

    .line 1760
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1762
    .local v1, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    packed-switch v0, :pswitch_data_138

    goto :goto_10

    :pswitch_31
    move v4, v5

    .line 1764
    goto :goto_10

    :pswitch_33
    move v4, v5

    .line 1768
    goto :goto_10

    .line 1771
    :pswitch_35
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    const/4 v6, 0x0

    #setter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3702(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;

    move v4, v5

    .line 1772
    goto :goto_10

    .line 1776
    :pswitch_3d
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v6

    if-ne v4, v6, :cond_86

    .line 1777
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1778
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1779
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 1781
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1782
    .local v2, i:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1783
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_84
    move v4, v5

    .line 1792
    goto :goto_10

    .line 1786
    .end local v2           #i:I
    :cond_86
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1787
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1788
    .restart local v2       #i:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$4300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1789
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_84

    .line 1796
    .end local v2           #i:I
    :pswitch_b8
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_c7

    move v4, v5

    .line 1797
    goto/16 :goto_10

    .line 1800
    :cond_c7
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_fe

    .line 1801
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z

    move-result v4

    if-nez v4, :cond_fb

    .line 1802
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3302(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Z)Z

    .line 1803
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollLeft:Z
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3402(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Z)Z

    .line 1804
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

    move-result-object v6

    invoke-virtual {v4, v6, v9, v10}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_fb
    :goto_fb
    move v4, v5

    .line 1813
    goto/16 :goto_10

    .line 1806
    :cond_fe
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_fb

    .line 1807
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z

    move-result v6

    if-nez v6, :cond_fb

    .line 1808
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z
    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3302(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Z)Z

    .line 1809
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollLeft:Z
    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3402(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Z)Z

    .line 1810
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;
    invoke-static {v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

    move-result-object v6

    invoke-virtual {v4, v6, v9, v10}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_fb

    .line 1762
    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_31
        :pswitch_b8
        :pswitch_3d
        :pswitch_35
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method
