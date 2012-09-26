.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;
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
    name = "TrayIconLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1562
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 8
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 1565
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1587
    :goto_9
    return v3

    .line 1572
    :cond_a
    if-eqz p1, :cond_2d

    .line 1574
    move-object v2, p1

    .line 1581
    .local v2, v:Landroid/view/View;
    const-string v4, "MiniAppDragItem"

    invoke-static {}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3600()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1582
    .local v0, dragData:Landroid/content/ClipData;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$3702(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;

    .line 1583
    const v4, 0x7f0f0050

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1584
    .local v1, icon:Landroid/widget/ImageView;
    new-instance v4, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v4, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v0, v4, v2, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1587
    .end local v0           #dragData:Landroid/content/ClipData;
    .end local v1           #icon:Landroid/widget/ImageView;
    .end local v2           #v:Landroid/view/View;
    :cond_2d
    const/4 v3, 0x1

    goto :goto_9
.end method
