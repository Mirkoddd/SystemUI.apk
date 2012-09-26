.class Lcom/android/systemui/recent/RecentsPanelView$3;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;

.field final synthetic val$selectedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->val$selectedView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    .line 810
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0f00d7

    if-ne v2, v3, :cond_16

    .line 811
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->val$selectedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 824
    :goto_14
    const/4 v2, 0x1

    :goto_15
    return v2

    .line 812
    :cond_16
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0f00d8

    if-ne v2, v3, :cond_57

    .line 813
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->val$selectedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 814
    .local v1, viewHolder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    if-eqz v1, :cond_3c

    .line 815
    iget-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 816
    .local v0, ad:Lcom/android/systemui/recent/TaskDescription;
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v3, v0, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    #calls: Lcom/android/systemui/recent/RecentsPanelView;->startApplicationDetailsActivity(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$700(Lcom/android/systemui/recent/RecentsPanelView;Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/StatusBar;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$800(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/statusbar/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBar;->animateCollapse()V

    goto :goto_14

    .line 819
    .end local v0           #ad:Lcom/android/systemui/recent/TaskDescription;
    :cond_3c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oops, no tag on view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->val$selectedView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 822
    .end local v1           #viewHolder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    :cond_57
    const/4 v2, 0x0

    goto :goto_15
.end method
