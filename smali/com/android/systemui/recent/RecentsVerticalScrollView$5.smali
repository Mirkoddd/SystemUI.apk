.class Lcom/android/systemui/recent/RecentsVerticalScrollView$5;
.super Ljava/lang/Object;
.source "RecentsVerticalScrollView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsVerticalScrollView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

.field final synthetic val$thumbnailView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;->val$thumbnailView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "view"
    .parameter "focus"

    .prologue
    .line 115
    if-eqz p2, :cond_9

    .line 116
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;->val$thumbnailView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 119
    :goto_8
    return-void

    .line 118
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;->val$thumbnailView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_8
.end method
