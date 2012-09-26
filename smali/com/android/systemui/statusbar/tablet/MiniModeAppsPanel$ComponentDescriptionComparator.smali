.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparator;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComponentDescriptionComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparator;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 11
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 415
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .local v0, cd1:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    move-object v1, p2

    .line 416
    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 418
    .local v1, cd2:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparator;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v7

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getComponentDescriptionIndex(Landroid/content/ComponentName;)I
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/content/ComponentName;)I

    move-result v2

    .line 419
    .local v2, index1:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparator;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v7

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getComponentDescriptionIndex(Landroid/content/ComponentName;)I
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/content/ComponentName;)I

    move-result v3

    .line 421
    .local v3, index2:I
    if-ne v2, v5, :cond_1f

    .line 431
    :cond_1e
    :goto_1e
    return v4

    .line 423
    :cond_1f
    if-ne v3, v5, :cond_23

    move v4, v5

    .line 424
    goto :goto_1e

    .line 426
    :cond_23
    if-ge v2, v3, :cond_27

    move v4, v5

    .line 427
    goto :goto_1e

    .line 428
    :cond_27
    if-ne v2, v3, :cond_1e

    .line 429
    const/4 v4, 0x0

    goto :goto_1e
.end method
