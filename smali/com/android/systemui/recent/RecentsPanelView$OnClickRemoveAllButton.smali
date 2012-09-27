.class final Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickRemoveAllButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .registers 2
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 562
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/recent/RecentsPanelView;->sendAccessibilityEvent(I)V

    .line 564
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$500(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 567
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_35

    .line 569
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/TaskDescription;

    .line 570
    .local v2, td:Lcom/android/systemui/recent/TaskDescription;
    iget v3, v2, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v0, v3, v5}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 573
    .end local v2           #td:Lcom/android/systemui/recent/TaskDescription;
    :cond_35
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    .line 576
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recent/RecentsPanelView;->hide(Z)V

    .line 577
    return-void
.end method
