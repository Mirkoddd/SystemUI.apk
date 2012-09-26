.class Lcom/android/systemui/Nyandroid$Board$3;
.super Ljava/lang/Object;
.source "Nyandroid.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/Nyandroid$Board;->reset()V
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
    .line 173
    iput-object p1, p0, Lcom/android/systemui/Nyandroid$Board$3;->this$0:Lcom/android/systemui/Nyandroid$Board;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .registers 14
    .parameter "animation"
    .parameter "totalTime"
    .parameter "deltaTime"

    .prologue
    const/high16 v7, -0x4000

    .line 178
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/Nyandroid$Board$3;->this$0:Lcom/android/systemui/Nyandroid$Board;

    invoke-virtual {v5}, Lcom/android/systemui/Nyandroid$Board;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_70

    .line 179
    iget-object v5, p0, Lcom/android/systemui/Nyandroid$Board$3;->this$0:Lcom/android/systemui/Nyandroid$Board;

    invoke-virtual {v5, v2}, Lcom/android/systemui/Nyandroid$Board;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 180
    .local v4, v:Landroid/view/View;
    instance-of v5, v4, Lcom/android/systemui/Nyandroid$Board$FlyingCat;

    if-nez v5, :cond_18

    .line 178
    :cond_15
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_18
    move-object v3, v4

    .line 181
    check-cast v3, Lcom/android/systemui/Nyandroid$Board$FlyingCat;

    .line 182
    .local v3, nv:Lcom/android/systemui/Nyandroid$Board$FlyingCat;
    long-to-float v5, p4

    const/high16 v6, 0x447a

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->update(F)V

    .line 183
    invoke-virtual {v3}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getScaleX()F

    move-result v6

    mul-float v1, v5, v6

    .line 184
    .local v1, catWidth:F
    invoke-virtual {v3}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getScaleY()F

    move-result v6

    mul-float v0, v5, v6

    .line 185
    .local v0, catHeight:F
    invoke-virtual {v3}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getX()F

    move-result v5

    add-float/2addr v5, v1

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_6c

    invoke-virtual {v3}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/Nyandroid$Board$3;->this$0:Lcom/android/systemui/Nyandroid$Board;

    invoke-virtual {v6}, Lcom/android/systemui/Nyandroid$Board;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_6c

    invoke-virtual {v3}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getY()F

    move-result v5

    add-float/2addr v5, v0

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_6c

    invoke-virtual {v3}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/Nyandroid$Board$3;->this$0:Lcom/android/systemui/Nyandroid$Board;

    invoke-virtual {v6}, Lcom/android/systemui/Nyandroid$Board;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_15

    .line 190
    :cond_6c
    invoke-virtual {v3}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->reset()V

    goto :goto_15

    .line 193
    .end local v0           #catHeight:F
    .end local v1           #catWidth:F
    .end local v3           #nv:Lcom/android/systemui/Nyandroid$Board$FlyingCat;
    .end local v4           #v:Landroid/view/View;
    :cond_70
    return-void
.end method
