.class public Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
.super Landroid/view/ViewGroup;
.source "NotificationRowLayout.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;


# static fields
.field private static final APPEAR_ANIM_LEN:I = 0xfa

.field private static final DEBUG:Z = false

.field private static final DISAPPEAR_ANIM_LEN:I = 0xfa

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationRowLayout"


# instance fields
.field mAnimateBounds:Z

.field mAppearingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mDisappearingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mHeight:I

.field mNumRows:I

.field mRemoveViews:Z

.field mRowHeight:I

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAnimateBounds:Z

    .line 50
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 51
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mNumRows:I

    .line 52
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRowHeight:I

    .line 53
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mHeight:I

    .line 55
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    .line 56
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    .line 62
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRemoveViews:Z

    .line 71
    sget-object v3, Lcom/android/systemui/R$styleable;->NotificationRowLayout:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRowHeight:I

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 94
    .local v1, densityScale:F
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    int-to-float v2, v3

    .line 95
    .local v2, pagingTouchSlop:F
    new-instance v3, Lcom/android/systemui/SwipeHelper;

    invoke-direct {v3, v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 96
    return-void
.end method

.method static synthetic access$001(Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 172
    move-object v1, p1

    .line 174
    .local v1, childF:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAnimateBounds:Z

    if-eqz v2, :cond_2c

    .line 175
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_2e

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 176
    .local v0, alphaFade:Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 177
    new-instance v2, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;-><init>(Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->requestLayout()V

    .line 191
    .end local v0           #alphaFade:Landroid/animation/ObjectAnimator;
    :cond_2c
    return-void

    .line 175
    nop

    :array_2e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    .line 116
    const v1, 0x7f0f007b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, veto:Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public dismissRowAnimated(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->dismissRowAnimated(Landroid/view/View;I)V

    .line 205
    return-void
.end method

.method public dismissRowAnimated(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "vel"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 209
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 9
    .parameter "ev"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v1

    .line 139
    .local v1, count:I
    const/4 v4, 0x0

    .line 140
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 141
    .local v3, touchY:I
    const/4 v0, 0x0

    .line 143
    .local v0, childIdx:I
    :goto_b
    if-ge v0, v1, :cond_22

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 145
    .local v2, slidingChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1c

    .line 143
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 148
    :cond_1c
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRowHeight:I

    add-int/2addr v4, v5

    .line 149
    if-ge v3, v4, :cond_19

    .line 151
    .end local v2           #slidingChild:Landroid/view/View;
    :goto_21
    return-object v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter "v"

    .prologue
    .line 155
    return-object p1
.end method

.method public getForcedHeight()I
    .registers 2

    .prologue
    .line 383
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mHeight:I

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 131
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 121
    const v1, 0x7f0f007b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, veto:Landroid/view/View;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_18

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRemoveViews:Z

    if-eqz v1, :cond_18

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 125
    :cond_18
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 162
    .local v0, densityScale:F
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 163
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 164
    .local v1, pagingTouchSlop:F
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 165
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 134
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 277
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 261
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setWillNotDraw(Z)V

    .line 263
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 336
    sub-int v6, p4, p2

    .line 337
    .local v6, width:I
    sub-int v2, p5, p3

    .line 341
    .local v2, height:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v1

    .line 342
    .local v1, count:I
    const/4 v7, 0x0

    .line 343
    .local v7, y:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v1, :cond_63

    .line 344
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1b

    .line 343
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 348
    :cond_1b
    const/high16 v4, 0x3f80

    .line 349
    .local v4, progress:F
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 350
    const/high16 v9, 0x3f80

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    sub-float v4, v9, v8

    .line 354
    :cond_35
    :goto_35
    const/high16 v8, 0x3f80

    cmpl-float v8, v4, v8

    if-lez v8, :cond_3d

    .line 358
    const/high16 v4, 0x3f80

    .line 360
    :cond_3d
    iget v8, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRowHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 366
    .local v5, thisRowHeight:I
    const/4 v8, 0x0

    add-int v9, v7, v5

    invoke-virtual {v0, v8, v7, v6, v9}, Landroid/view/View;->layout(IIII)V

    .line 367
    add-int/2addr v7, v5

    goto :goto_18

    .line 351
    .end local v5           #thisRowHeight:I
    :cond_4a
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 352
    const/high16 v9, 0x3f80

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    sub-float v4, v9, v8

    goto :goto_35

    .line 372
    .end local v0           #child:Landroid/view/View;
    .end local v4           #progress:F
    :cond_63
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v10, 0x8

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v4

    .line 284
    .local v4, count:I
    const/4 v6, 0x0

    .line 285
    .local v6, numRows:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_8
    if-ge v5, v4, :cond_22

    .line 286
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_17

    .line 285
    :cond_14
    :goto_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 290
    :cond_17
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 293
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 295
    .end local v0           #child:Landroid/view/View;
    :cond_22
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mNumRows:I

    if-eq v6, v7, :cond_4b

    .line 298
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRowHeight:I

    mul-int v3, v6, v7

    .line 304
    .local v3, computedHeight:I
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mNumRows:I

    .line 306
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAnimateBounds:Z

    if-eqz v7, :cond_64

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->isShown()Z

    move-result v7

    if-eqz v7, :cond_64

    .line 307
    const-string v7, "forcedHeight"

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v3, v8, v9

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0xfa

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 316
    .end local v3           #computedHeight:I
    :cond_4b
    :goto_4b
    move v2, p1

    .line 317
    .local v2, childWidthMS:I
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRowHeight:I

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 320
    .local v1, childHeightMS:I
    const/4 v5, 0x0

    :goto_55
    if-ge v5, v4, :cond_6c

    .line 321
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 322
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_68

    .line 320
    :goto_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 311
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMS:I
    .end local v2           #childWidthMS:I
    .restart local v3       #computedHeight:I
    :cond_64
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setForcedHeight(I)V

    goto :goto_4b

    .line 326
    .end local v3           #computedHeight:I
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childHeightMS:I
    .restart local v2       #childWidthMS:I
    :cond_68
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_61

    .line 329
    .end local v0           #child:Landroid/view/View;
    :cond_6c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getDefaultSize(II)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getForcedHeight()I

    move-result v8

    invoke-static {v8, p2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->resolveSize(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setMeasuredDimension(II)V

    .line 332
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public removeView(Landroid/view/View;)V
    .registers 11
    .parameter "child"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 213
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRemoveViews:Z

    if-nez v3, :cond_7

    .line 256
    :goto_6
    return-void

    .line 219
    :cond_7
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAnimateBounds:Z

    if-eqz v3, :cond_5f

    .line 220
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 221
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 228
    .local v2, currentAlpha:F
    float-to-double v3, v2

    const-wide v5, 0x3fb999999999999aL

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4e

    .line 229
    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v7, v4, v5

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 237
    .local v0, anim:Landroid/animation/ValueAnimator;
    :goto_34
    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 238
    move-object v1, p1

    .line 239
    .local v1, childF:Landroid/view/View;
    new-instance v3, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$3;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$3;-><init>(Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 250
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->requestLayout()V

    goto :goto_6

    .line 231
    .end local v0           #anim:Landroid/animation/ValueAnimator;
    .end local v1           #childF:Landroid/view/View;
    :cond_4e
    cmpl-float v3, v2, v7

    if-lez v3, :cond_55

    .line 233
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 235
    :cond_55
    new-array v3, v8, [F

    fill-array-data v3, :array_64

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0       #anim:Landroid/animation/ValueAnimator;
    goto :goto_34

    .line 254
    .end local v0           #anim:Landroid/animation/ValueAnimator;
    .end local v2           #currentAlpha:F
    :cond_5f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_6

    .line 235
    nop

    :array_64
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public setAnimateBounds(Z)V
    .registers 2
    .parameter "anim"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAnimateBounds:Z

    .line 100
    return-void
.end method

.method public setForcedHeight(I)V
    .registers 3
    .parameter "h"

    .prologue
    .line 376
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mHeight:I

    if-eq p1, v0, :cond_9

    .line 377
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mHeight:I

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->requestLayout()V

    .line 380
    :cond_9
    return-void
.end method

.method public setViewRemoval(Z)V
    .registers 2
    .parameter "removeViews"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRemoveViews:Z

    .line 201
    return-void
.end method
