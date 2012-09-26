.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field static final ALPHA_FADE_END:F = 0.5f

.field public static ALPHA_FADE_START:F = 0.0f

.field private static final CONSTRAIN_SWIPE:Z = true

.field private static final DEBUG:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DISMISS_IF_SWIPED_FAR_ENOUGH:Z = true

.field private static final FADE_OUT_DURING_SWIPE:Z = true

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final SNAP_ANIM_LEN:I = 0x96

.field static final TAG:Ljava/lang/String; = "com.android.systemui.SwipeHelper"

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mInitialTouchPos:F

.field private mPagingTouchSlop:F

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V
    .registers 6
    .parameter "swipeDirection"
    .parameter "callback"
    .parameter "densityScale"
    .parameter "pagingTouchSlop"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 47
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 48
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 49
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 71
    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    .line 72
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    .line 73
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 74
    iput p3, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 75
    iput p4, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)F
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .registers 7
    .parameter "v"
    .parameter "newPos"

    .prologue
    .line 100
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_11

    const-string v1, "translationX"

    :goto_6
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 102
    .local v0, anim:Landroid/animation/ObjectAnimator;
    return-object v0

    .line 100
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_11
    const-string v1, "translationY"

    goto :goto_6
.end method

.method private getAlphaForOffset(Landroid/view/View;)F
    .registers 8
    .parameter "view"

    .prologue
    const/high16 v5, 0x3f80

    .line 124
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 125
    .local v3, viewSize:F
    const/high16 v4, 0x3f00

    mul-float v0, v4, v3

    .line 126
    .local v0, fadeSize:F
    const/high16 v2, 0x3f80

    .line 127
    .local v2, result:F
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 128
    .local v1, pos:F
    sget v4, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_27

    .line 129
    sget v4, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 136
    :cond_1f
    :goto_1f
    const v4, 0x3cf5c28f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 130
    :cond_27
    sget v4, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1f

    .line 131
    sget v4, Lcom/android/systemui/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_1f
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .registers 3
    .parameter "vt"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_8
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .registers 3
    .parameter "ev"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_8
.end method

.method private getSize(Landroid/view/View;)F
    .registers 3
    .parameter "v"

    .prologue
    .line 119
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_9
.end method

.method private getTranslation(Landroid/view/View;)F
    .registers 3
    .parameter "v"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_8
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .registers 3
    .parameter "vt"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_8
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 141
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 144
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .registers 7
    .parameter "view"
    .parameter "childBounds"

    .prologue
    .line 152
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    .line 154
    .restart local p0
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 155
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 166
    :cond_3f
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .registers 4
    .parameter "v"
    .parameter "translate"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_8

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 116
    :goto_7
    return-void

    .line 114
    :cond_8
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_7
.end method


# virtual methods
.method public dismissChild(Landroid/view/View;F)V
    .registers 11
    .parameter "view"
    .parameter "velocity"

    .prologue
    const/4 v7, 0x0

    .line 210
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 211
    .local v1, animView:Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 214
    .local v2, canAnimViewBeDismissed:Z
    cmpg-float v5, p2, v7

    if-ltz v5, :cond_2e

    cmpl-float v5, p2, v7

    if-nez v5, :cond_1d

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_2e

    :cond_1d
    cmpl-float v5, p2, v7

    if-nez v5, :cond_76

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_76

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_76

    .line 218
    :cond_2e
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v5

    neg-float v4, v5

    .line 222
    .local v4, newPos:F
    :goto_33
    iget v3, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 223
    .local v3, duration:I
    cmpl-float v5, p2, v7

    if-eqz v5, :cond_7b

    .line 224
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 231
    :goto_50
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 232
    invoke-direct {p0, v1, v4}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 233
    .local v0, anim:Landroid/animation/ObjectAnimator;
    sget-object v5, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 235
    new-instance v5, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    new-instance v5, Lcom/android/systemui/SwipeHelper$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 250
    return-void

    .line 220
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    .end local v3           #duration:I
    .end local v4           #newPos:F
    :cond_76
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    .restart local v4       #newPos:F
    goto :goto_33

    .line 228
    .restart local v3       #duration:I
    :cond_7b
    iget v3, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_50
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 171
    .local v0, action:I
    packed-switch v0, :pswitch_data_7a

    .line 202
    :cond_9
    :goto_9
    iget-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    return v3

    .line 173
    :pswitch_c
    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 174
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 175
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 176
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 177
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 178
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 179
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    goto :goto_9

    .line 184
    :pswitch_3f
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 185
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    .line 187
    .local v2, pos:F
    iget v3, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v3

    .line 188
    .local v1, delta:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 189
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 190
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 191
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    goto :goto_9

    .line 197
    .end local v1           #delta:F
    .end local v2           #pos:F
    :pswitch_72
    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 198
    iput-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 199
    iput-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    goto :goto_9

    .line 171
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_72
        :pswitch_3f
        :pswitch_72
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 21
    .parameter "ev"

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v13, :cond_8

    .line 271
    const/4 v13, 0x0

    .line 329
    :goto_7
    return v13

    .line 274
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 276
    .local v2, action:I
    packed-switch v2, :pswitch_data_168

    .line 329
    :cond_18
    :goto_18
    const/4 v13, 0x1

    goto :goto_7

    .line 279
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v13, :cond_18

    .line 280
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v5, v13, v14

    .line 283
    .local v5, delta:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v13, v14}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_55

    .line 284
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v11

    .line 285
    .local v11, size:F
    const v13, 0x3e19999a

    mul-float v8, v13, v11

    .line 286
    .local v8, maxScrollDistance:F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v13, v13, v11

    if-ltz v13, :cond_7f

    .line 287
    const/4 v13, 0x0

    cmpl-float v13, v5, v13

    if-lez v13, :cond_7d

    move v5, v8

    .line 292
    .end local v8           #maxScrollDistance:F
    .end local v11           #size:F
    :cond_55
    :goto_55
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 293
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    if-eqz v13, :cond_75

    .line 294
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    .line 296
    :cond_75
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-static {v13}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    goto :goto_18

    .line 287
    .restart local v8       #maxScrollDistance:F
    .restart local v11       #size:F
    :cond_7d
    neg-float v5, v8

    goto :goto_55

    .line 289
    :cond_7f
    div-float v13, v5, v11

    float-to-double v13, v13

    const-wide v15, 0x3ff921fb54442d18L

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v5, v8, v13

    goto :goto_55

    .line 301
    .end local v5           #delta:F
    .end local v8           #maxScrollDistance:F
    .end local v11           #size:F
    :pswitch_90
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v13, :cond_18

    .line 302
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float v9, v13, v14

    .line 303
    .local v9, maxVelocity:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v14, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 304
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float v7, v13, v14

    .line 305
    .local v7, escapeVelocity:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v12

    .line 306
    .local v12, velocity:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v10

    .line 309
    .local v10, perpendicularVelocity:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3fd999999999999aL

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_145

    const/4 v3, 0x1

    .line 311
    .local v3, childSwipedFarEnough:Z
    :goto_f6
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v13, v13, v7

    if-lez v13, :cond_14b

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_14b

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-lez v13, :cond_147

    const/4 v13, 0x1

    :goto_110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_149

    const/4 v14, 0x1

    :goto_120
    if-ne v13, v14, :cond_14b

    const/4 v4, 0x1

    .line 315
    .local v4, childSwipedFastEnough:Z
    :goto_123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v13, v14}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_14d

    if-nez v4, :cond_135

    if-eqz v3, :cond_14d

    :cond_135
    const/4 v6, 0x1

    .line 318
    .local v6, dismissChild:Z
    :goto_136
    if-eqz v6, :cond_151

    .line 320
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v4, :cond_14f

    .end local v12           #velocity:F
    :goto_13e
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto/16 :goto_18

    .line 309
    .end local v3           #childSwipedFarEnough:Z
    .end local v4           #childSwipedFastEnough:Z
    .end local v6           #dismissChild:Z
    .restart local v12       #velocity:F
    :cond_145
    const/4 v3, 0x0

    goto :goto_f6

    .line 311
    .restart local v3       #childSwipedFarEnough:Z
    :cond_147
    const/4 v13, 0x0

    goto :goto_110

    :cond_149
    const/4 v14, 0x0

    goto :goto_120

    :cond_14b
    const/4 v4, 0x0

    goto :goto_123

    .line 315
    .restart local v4       #childSwipedFastEnough:Z
    :cond_14d
    const/4 v6, 0x0

    goto :goto_136

    .line 320
    .restart local v6       #dismissChild:Z
    :cond_14f
    const/4 v12, 0x0

    goto :goto_13e

    .line 323
    :cond_151
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v13, v14}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto/16 :goto_18

    .line 276
    nop

    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_90
        :pswitch_1a
        :pswitch_90
        :pswitch_1a
    .end packed-switch
.end method

.method public setDensityScale(F)V
    .registers 2
    .parameter "densityScale"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 80
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .registers 2
    .parameter "pagingTouchSlop"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 84
    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .registers 9
    .parameter "view"
    .parameter "velocity"

    .prologue
    .line 253
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 254
    .local v1, animView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 255
    .local v2, canAnimViewBeDismissed:Z
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 256
    .local v0, anim:Landroid/animation/ObjectAnimator;
    const/16 v3, 0x96

    .line 257
    .local v3, duration:I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 258
    new-instance v4, Lcom/android/systemui/SwipeHelper$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 266
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 267
    return-void
.end method
