.class Lcom/android/systemui/Nyandroid$Board$4;
.super Ljava/lang/Object;
.source "Nyandroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/Nyandroid$Board;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/Nyandroid$Board;


# direct methods
.method constructor <init>(Lcom/android/systemui/Nyandroid$Board;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/systemui/Nyandroid$Board$4;->this$0:Lcom/android/systemui/Nyandroid$Board;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/Nyandroid$Board$4;->this$0:Lcom/android/systemui/Nyandroid$Board;

    #calls: Lcom/android/systemui/Nyandroid$Board;->reset()V
    invoke-static {v0}, Lcom/android/systemui/Nyandroid$Board;->access$000(Lcom/android/systemui/Nyandroid$Board;)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/Nyandroid$Board$4;->this$0:Lcom/android/systemui/Nyandroid$Board;

    iget-object v0, v0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/Nyandroid$Board$4;->this$0:Lcom/android/systemui/Nyandroid$Board;

    iget-object v0, v0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 204
    :cond_12
    return-void
.end method
