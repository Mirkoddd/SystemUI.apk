.class Lcom/android/systemui/statusbar/phone/IconMerger$1;
.super Ljava/lang/Object;
.source "IconMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

.field final synthetic val$availableWidth:Z

.field final synthetic val$moreRequired:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/IconMerger;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$availableWidth:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v0, 0x8

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameShown:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$availableWidth:Z

    if-nez v1, :cond_1a

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    #getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_19
    :goto_19
    return-void

    .line 102
    :cond_1a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/IconMerger;->mLongCarrierNameShown:Z

    if-eqz v1, :cond_2e

    .line 103
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    if-eqz v1, :cond_19

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    #getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 107
    :cond_2e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    #getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    if-eqz v2, :cond_39

    const/4 v0, 0x0

    :cond_39
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19
.end method
