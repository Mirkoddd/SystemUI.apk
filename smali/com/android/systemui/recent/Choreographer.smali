.class Lcom/android/systemui/recent/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final CLOSE_DURATION:I = 0xfa

.field private static final DEBUG:Z = false

.field private static final OPEN_DURATION:I = 0x88

.field private static final SCRIM_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "RecentsPanelView"


# instance fields
.field final HYPERSPACE_OFFRAMP:I

.field mContentAnim:Landroid/animation/AnimatorSet;

.field mContentView:Landroid/view/View;

.field mListener:Landroid/animation/Animator$AnimatorListener;

.field mNoRecentAppsView:Landroid/view/View;

.field mPanelHeight:I

.field mRootView:Landroid/view/View;

.field mScrimView:Landroid/view/View;

.field mVisible:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .registers 7
    .parameter "root"
    .parameter "scrim"
    .parameter "content"
    .parameter "noRecentApps"
    .parameter "listener"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/recent/Choreographer;->HYPERSPACE_OFFRAMP:I

    .line 50
    iput-object p1, p0, Lcom/android/systemui/recent/Choreographer;->mRootView:Landroid/view/View;

    .line 51
    iput-object p2, p0, Lcom/android/systemui/recent/Choreographer;->mScrimView:Landroid/view/View;

    .line 52
    iput-object p3, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    .line 53
    iput-object p5, p0, Lcom/android/systemui/recent/Choreographer;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 54
    iput-object p4, p0, Lcom/android/systemui/recent/Choreographer;->mNoRecentAppsView:Landroid/view/View;

    .line 55
    return-void
.end method


# virtual methods
.method createAnimation(Z)V
    .registers 16
    .parameter "appearing"

    .prologue
    .line 62
    iget-object v9, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v8

    .line 63
    .local v8, y:F
    if-eqz p1, :cond_f0

    .line 66
    const/high16 v9, 0x4348

    cmpg-float v9, v8, v9

    if-gez v9, :cond_ec

    move v7, v8

    .line 67
    .local v7, start:F
    :goto_f
    const/4 v3, 0x0

    .line 73
    .local v3, end:F
    :goto_10
    iget-object v9, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    const-string v10, "translationY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v7, v11, v12

    const/4 v12, 0x1

    aput v3, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 75
    .local v6, posAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_f7

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x4020

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    :goto_2a
    invoke-virtual {v6, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    if-eqz p1, :cond_100

    const-wide/16 v9, 0x88

    :goto_31
    invoke-virtual {v6, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 80
    iget-object v10, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    const-string v11, "alpha"

    const/4 v9, 0x2

    new-array v12, v9, [F

    const/4 v9, 0x0

    iget-object v13, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v9

    const/4 v13, 0x1

    if-eqz p1, :cond_104

    const/high16 v9, 0x3f80

    :goto_49
    aput v9, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 82
    .local v4, glowAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_107

    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v10, 0x3f80

    invoke-direct {v9, v10}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_58
    invoke-virtual {v4, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    if-eqz p1, :cond_110

    const-wide/16 v9, 0x88

    :goto_5f
    invoke-virtual {v4, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 87
    const/4 v5, 0x0

    .line 88
    .local v5, noRecentAppsFadeAnim:Landroid/animation/Animator;
    iget-object v9, p0, Lcom/android/systemui/recent/Choreographer;->mNoRecentAppsView:Landroid/view/View;

    if-eqz v9, :cond_9d

    iget-object v9, p0, Lcom/android/systemui/recent/Choreographer;->mNoRecentAppsView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_9d

    .line 90
    iget-object v10, p0, Lcom/android/systemui/recent/Choreographer;->mNoRecentAppsView:Landroid/view/View;

    const-string v11, "alpha"

    const/4 v9, 0x2

    new-array v12, v9, [F

    const/4 v9, 0x0

    iget-object v13, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v9

    const/4 v13, 0x1

    if-eqz p1, :cond_114

    const/high16 v9, 0x3f80

    :goto_84
    aput v9, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 92
    if-eqz p1, :cond_117

    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v10, 0x3f80

    invoke-direct {v9, v10}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_93
    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    if-eqz p1, :cond_120

    const-wide/16 v9, 0x88

    :goto_9a
    invoke-virtual {v5, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 98
    :cond_9d
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 99
    iget-object v9, p0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 101
    .local v2, builder:Landroid/animation/AnimatorSet$Builder;
    if-eqz v5, :cond_b3

    .line 102
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 105
    :cond_b3
    iget-object v9, p0, Lcom/android/systemui/recent/Choreographer;->mScrimView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_db

    .line 107
    const-string v10, "alpha"

    const/4 v9, 0x2

    new-array v11, v9, [I

    const/4 v12, 0x0

    if-eqz p1, :cond_124

    const/4 v9, 0x0

    :goto_c4
    aput v9, v11, v12

    const/4 v12, 0x1

    if-eqz p1, :cond_127

    const/16 v9, 0xff

    :goto_cb
    aput v9, v11, v12

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 109
    .local v1, bgAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_129

    const-wide/16 v9, 0x190

    :goto_d5
    invoke-virtual {v1, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 110
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 112
    .end local v1           #bgAnim:Landroid/animation/Animator;
    :cond_db
    iget-object v9, p0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    iget-object v9, p0, Lcom/android/systemui/recent/Choreographer;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v9, :cond_eb

    .line 114
    iget-object v9, p0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    iget-object v10, p0, Lcom/android/systemui/recent/Choreographer;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 116
    :cond_eb
    return-void

    .line 66
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v2           #builder:Landroid/animation/AnimatorSet$Builder;
    .end local v3           #end:F
    .end local v4           #glowAnim:Landroid/animation/Animator;
    .end local v5           #noRecentAppsFadeAnim:Landroid/animation/Animator;
    .end local v6           #posAnim:Landroid/animation/Animator;
    .end local v7           #start:F
    :cond_ec
    const/high16 v7, 0x4348

    goto/16 :goto_f

    .line 69
    :cond_f0
    move v7, v8

    .line 70
    .restart local v7       #start:F
    const/high16 v9, 0x4348

    add-float v3, v8, v9

    .restart local v3       #end:F
    goto/16 :goto_10

    .line 75
    .restart local v6       #posAnim:Landroid/animation/Animator;
    :cond_f7
    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v10, 0x4020

    invoke-direct {v9, v10}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto/16 :goto_2a

    .line 78
    :cond_100
    const-wide/16 v9, 0xfa

    goto/16 :goto_31

    .line 80
    :cond_104
    const/4 v9, 0x0

    goto/16 :goto_49

    .line 82
    .restart local v4       #glowAnim:Landroid/animation/Animator;
    :cond_107
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x3f80

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto/16 :goto_58

    .line 85
    :cond_110
    const-wide/16 v9, 0xfa

    goto/16 :goto_5f

    .line 90
    .restart local v5       #noRecentAppsFadeAnim:Landroid/animation/Animator;
    :cond_114
    const/4 v9, 0x0

    goto/16 :goto_84

    .line 92
    :cond_117
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x3f80

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto/16 :goto_93

    .line 95
    :cond_120
    const-wide/16 v9, 0xfa

    goto/16 :goto_9a

    .line 107
    .restart local v0       #background:Landroid/graphics/drawable/Drawable;
    .restart local v2       #builder:Landroid/animation/AnimatorSet$Builder;
    :cond_124
    const/16 v9, 0xff

    goto :goto_c4

    :cond_127
    const/4 v9, 0x0

    goto :goto_cb

    .line 109
    .restart local v1       #bgAnim:Landroid/animation/Animator;
    :cond_129
    const-wide/16 v9, 0xfa

    goto :goto_d5
.end method

.method jumpTo(Z)V
    .registers 4
    .parameter "appearing"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 137
    return-void

    .line 136
    :cond_9
    iget v0, p0, Lcom/android/systemui/recent/Choreographer;->mPanelHeight:I

    int-to-float v0, v0

    goto :goto_5
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/Choreographer;->mVisible:Z

    .line 148
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/recent/Choreographer;->mVisible:Z

    if-nez v0, :cond_c

    .line 153
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 156
    iput-object v2, p0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 157
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 160
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 163
    return-void
.end method

.method public setPanelHeight(I)V
    .registers 2
    .parameter "h"

    .prologue
    .line 141
    iput p1, p0, Lcom/android/systemui/recent/Choreographer;->mPanelHeight:I

    .line 142
    return-void
.end method

.method startAnimation(Z)V
    .registers 5
    .parameter "appearing"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/Choreographer;->createAnimation(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 127
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    .line 130
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 132
    iput-boolean p1, p0, Lcom/android/systemui/recent/Choreographer;->mVisible:Z

    .line 133
    return-void
.end method
