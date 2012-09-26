.class Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;
.super Ljava/lang/Object;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

.field final synthetic val$thumbnailView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;->val$thumbnailView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "view"
    .parameter "focus"

    .prologue
    .line 108
    if-eqz p2, :cond_9

    .line 109
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;->val$thumbnailView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 112
    :goto_8
    return-void

    .line 111
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;->val$thumbnailView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_8
.end method
