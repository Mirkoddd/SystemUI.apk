.class Lcom/android/systemui/statusbar/policy/NotificationRowLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationRowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field final synthetic val$childF:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$3;->this$0:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$3;->val$childF:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$3;->this$0:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$3;->val$childF:Landroid/view/View;

    #calls: Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->access$001(Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Landroid/view/View;)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$3;->this$0:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$3;->val$childF:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$3;->this$0:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->requestLayout()V

    .line 246
    return-void
.end method
