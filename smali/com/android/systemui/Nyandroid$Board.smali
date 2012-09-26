.class public Lcom/android/systemui/Nyandroid$Board;
.super Landroid/widget/FrameLayout;
.source "Nyandroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/Nyandroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Board"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/Nyandroid$Board$FlyingCat;
    }
.end annotation


# static fields
.field public static final FIXED_STARS:Z = true

.field public static final NUM_CATS:I = 0x14

.field static sRNG:Ljava/util/Random;


# instance fields
.field mAnim:Landroid/animation/TimeAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/systemui/Nyandroid$Board;->sRNG:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "as"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/Nyandroid$Board;->setLayerType(ILandroid/graphics/Paint;)V

    .line 125
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board;->setSystemUiVisibility(I)V

    .line 126
    const v0, -0xffcc9a

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board;->setBackgroundColor(I)V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/Nyandroid$Board;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/Nyandroid$Board;->reset()V

    return-void
.end method

.method static lerp(FFF)F
    .registers 4
    .parameter "a"
    .parameter "b"
    .parameter "f"

    .prologue
    .line 61
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method static pick([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)TE;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, array:[Ljava/lang/Object;,"[TE;"
    array-length v0, p0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 74
    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/android/systemui/Nyandroid$Board;->sRNG:Ljava/util/Random;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, p0, v0

    goto :goto_4
.end method

.method static randfrange(FF)F
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 65
    sget-object v0, Lcom/android/systemui/Nyandroid$Board;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/Nyandroid$Board;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method static randsign()I
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/systemui/Nyandroid$Board;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, -0x1

    goto :goto_9
.end method

.method private reset()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x14

    const/4 v6, -0x2

    const/high16 v10, 0x447a

    const/4 v9, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board;->removeAllViews()V

    .line 133
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 138
    .local v5, wrap:Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    if-ge v2, v11, :cond_62

    .line 139
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    .local v1, fixedStar:Landroid/widget/ImageView;
    const v6, 0x7f020060

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/Nyandroid$Board;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    const v6, 0x3dcccccd

    const/high16 v7, 0x3f80

    invoke-static {v6, v7}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v4

    .line 144
    .local v4, scale:F
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v9, v6}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setX(F)V

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v9, v6}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setY(F)V

    .line 147
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 148
    .local v0, anim:Landroid/graphics/drawable/AnimationDrawable;
    new-instance v6, Lcom/android/systemui/Nyandroid$Board$1;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/Nyandroid$Board$1;-><init>(Lcom/android/systemui/Nyandroid$Board;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-static {v9, v10}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v7

    float-to-int v7, v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/systemui/Nyandroid$Board;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 155
    .end local v0           #anim:Landroid/graphics/drawable/AnimationDrawable;
    .end local v1           #fixedStar:Landroid/widget/ImageView;
    .end local v4           #scale:F
    :cond_62
    const/4 v2, 0x0

    :goto_63
    if-ge v2, v11, :cond_a4

    .line 156
    new-instance v3, Lcom/android/systemui/Nyandroid$Board$FlyingCat;

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v6, v12}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;-><init>(Lcom/android/systemui/Nyandroid$Board;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    .local v3, nv:Lcom/android/systemui/Nyandroid$Board$FlyingCat;
    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/Nyandroid$Board;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    int-to-float v6, v2

    const/high16 v7, 0x41a0

    div-float/2addr v6, v7

    iput v6, v3, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->z:F

    .line 159
    iget v6, v3, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->z:F

    iget v7, v3, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->z:F

    mul-float/2addr v6, v7

    iput v6, v3, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->z:F

    .line 160
    invoke-virtual {v3}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->reset()V

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v9, v6}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setX(F)V

    .line 162
    invoke-virtual {v3}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 163
    .restart local v0       #anim:Landroid/graphics/drawable/AnimationDrawable;
    new-instance v6, Lcom/android/systemui/Nyandroid$Board$2;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/Nyandroid$Board$2;-><init>(Lcom/android/systemui/Nyandroid$Board;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-static {v9, v10}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v7

    float-to-int v7, v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/systemui/Nyandroid$Board;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 169
    .end local v0           #anim:Landroid/graphics/drawable/AnimationDrawable;
    .end local v3           #nv:Lcom/android/systemui/Nyandroid$Board$FlyingCat;
    :cond_a4
    iget-object v6, p0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    if-eqz v6, :cond_ad

    .line 170
    iget-object v6, p0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v6}, Landroid/animation/TimeAnimator;->cancel()V

    .line 172
    :cond_ad
    new-instance v6, Landroid/animation/TimeAnimator;

    invoke-direct {v6}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    .line 173
    iget-object v6, p0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    new-instance v7, Lcom/android/systemui/Nyandroid$Board$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/Nyandroid$Board$3;-><init>(Lcom/android/systemui/Nyandroid$Board;)V

    invoke-virtual {v6, v7}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 195
    return-void
.end method


# virtual methods
.method public isOpaque()Z
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/Nyandroid$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 212
    :cond_c
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 201
    new-instance v0, Lcom/android/systemui/Nyandroid$Board$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/Nyandroid$Board$4;-><init>(Lcom/android/systemui/Nyandroid$Board;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method
