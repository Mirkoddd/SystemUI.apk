.class Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setContentFrameVisible(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

.field final synthetic val$showing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;->val$showing:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "_a"

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;->val$showing:Z

    if-nez v0, :cond_16

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 341
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updateClearButton()V

    .line 342
    return-void
.end method
