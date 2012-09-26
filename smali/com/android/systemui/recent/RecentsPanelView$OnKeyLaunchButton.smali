.class final Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnKeyLaunchButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .registers 2
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 549
    const/4 v2, 0x4

    if-ne p2, v2, :cond_b

    .line 551
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 554
    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method
