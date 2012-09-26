.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1438
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 8
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1441
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->isChosen()Z

    move-result v2

    if-ne v2, v4, :cond_10

    move v2, v3

    .line 1452
    :goto_f
    return v2

    .line 1447
    :cond_10
    const-string v2, "MiniAppDragItem"

    invoke-static {}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3600()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1448
    .local v0, dragData:Landroid/content/ClipData;
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3702(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;

    .line 1449
    const v2, 0x7f0f0062

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1450
    .local v1, icon:Landroid/widget/ImageView;
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0, v2, p1, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move v2, v4

    .line 1452
    goto :goto_f
.end method
