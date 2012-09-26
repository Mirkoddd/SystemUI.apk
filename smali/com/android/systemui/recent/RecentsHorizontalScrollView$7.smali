.class Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;
.super Ljava/lang/Object;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    #calls: Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->access$100(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLastScrollPosition:I

    .line 139
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    iget v1, v1, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLastScrollPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollTo(II)V

    .line 140
    return-void
.end method
