.class Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/NotificationPanel;->swapPanels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

.field final synthetic val$toHide:Landroid/view/View;

.field final synthetic val$toShow:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toHide:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toShow:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7
    .parameter "_a"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toHide:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toShow:Landroid/view/View;

    if-eqz v0, :cond_58

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    if-nez v0, :cond_21

    .line 366
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toShow:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-ne v0, v4, :cond_63

    move v0, v1

    :goto_1e
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setContentFrameVisible(ZZ)V

    .line 369
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toShow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toShow:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    if-lez v0, :cond_4b

    .line 371
    :cond_34
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toShow:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_66

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 376
    :cond_4b
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->val$toHide:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-ne v0, v1, :cond_58

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->removeSettingsView()V

    .line 380
    :cond_58
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updateClearButton()V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$4;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updatePanelModeButtons()V

    .line 382
    return-void

    :cond_63
    move v0, v2

    .line 366
    goto :goto_1e

    .line 371
    nop

    :array_66
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
