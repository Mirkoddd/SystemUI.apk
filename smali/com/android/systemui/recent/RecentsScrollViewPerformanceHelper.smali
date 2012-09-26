.class public Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;
.super Ljava/lang/Object;
.source "RecentsScrollViewPerformanceHelper.java"


# static fields
.field public static final OPTIMIZE_SW_RENDERED_RECENTS:Z = true

.field public static final USE_DARK_FADE_IN_HW_ACCELERATED_MODE:Z = true


# instance fields
.field private mAttachedToWindow:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field private mContext:Landroid/content/Context;

.field private mFadingEdgeLength:I

.field private mFirstTime:Z

.field private mIsVertical:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mScrollView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSoftwareRendered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "scrollView"
    .parameter "isVertical"

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mShowBackground:Z

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFirstTime:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    .line 50
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mAttachedToWindow:Z

    .line 66
    iput-object p3, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mContext:Landroid/content/Context;

    .line 68
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x18

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    .line 71
    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    .line 72
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "scrollView"
    .parameter "isVertical"

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 58
    .local v0, isTablet:Z
    new-instance v1, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V

    return-object v1
.end method


# virtual methods
.method public addViewCallback(Landroid/view/View;)V
    .registers 4
    .parameter "newLinearLayoutChild"

    .prologue
    .line 94
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v1, :cond_19

    .line 95
    move-object v0, p1

    .line 96
    .local v0, view:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mShowBackground:Z

    if-eqz v1, :cond_1a

    .line 97
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 106
    .end local v0           #view:Landroid/view/View;
    :cond_19
    :goto_19
    return-void

    .line 101
    .restart local v0       #view:Landroid/view/View;
    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_19
.end method

.method public drawCallback(Landroid/graphics/Canvas;IIIIIIFFFF)V
    .registers 36
    .parameter "canvas"
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "topFadingEdgeStrength"
    .parameter "bottomFadingEdgeStrength"
    .parameter "leftFadingEdgeStrength"
    .parameter "rightFadingEdgeStrength"

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v2, :cond_2e

    .line 123
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v2, :cond_1fa

    .line 124
    if-gez p7, :cond_1bd

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 126
    .local v12, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    move/from16 v0, p7

    invoke-virtual {v12, v2, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    .end local v12           #d:Landroid/graphics/drawable/Drawable;
    :cond_2e
    :goto_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v2, :cond_34

    .line 156
    :cond_34
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 157
    .local v21, p:Landroid/graphics/Paint;
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 160
    .local v20, matrix:Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/high16 v6, -0x3400

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 163
    .local v1, fade:Landroid/graphics/Shader;
    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 166
    const/16 v16, 0x0

    .line 167
    .local v16, drawTop:Z
    const/4 v13, 0x0

    .line 168
    .local v13, drawBottom:Z
    const/4 v14, 0x0

    .line 169
    .local v14, drawLeft:Z
    const/4 v15, 0x0

    .line 171
    .local v15, drawRight:Z
    const/16 v23, 0x0

    .line 172
    .local v23, topFadeStrength:F
    const/4 v9, 0x0

    .line 173
    .local v9, bottomFadeStrength:F
    const/16 v18, 0x0

    .line 174
    .local v18, leftFadeStrength:F
    const/16 v22, 0x0

    .line 176
    .local v22, rightFadeStrength:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    int-to-float v0, v2

    move/from16 v17, v0

    .line 177
    .local v17, fadeHeight:F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    .line 181
    .local v19, length:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v2, :cond_7a

    add-int v2, p4, v19

    sub-int v3, p5, v19

    if-le v2, v3, :cond_7a

    .line 182
    sub-int v2, p5, p4

    div-int/lit8 v19, v2, 0x2

    .line 186
    :cond_7a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-nez v2, :cond_8a

    add-int v2, p2, v19

    sub-int v3, p3, v19

    if-le v2, v3, :cond_8a

    .line 187
    sub-int v2, p3, p2

    div-int/lit8 v19, v2, 0x2

    .line 190
    :cond_8a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v2, :cond_bd

    .line 191
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    move/from16 v0, p8

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 192
    mul-float v2, v23, v17

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_25b

    const/16 v16, 0x1

    .line 193
    :goto_a7
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    move/from16 v0, p9

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 194
    mul-float v2, v9, v17

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_25f

    const/4 v13, 0x1

    .line 197
    :cond_bd
    :goto_bd
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-nez v2, :cond_ef

    .line 198
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    move/from16 v0, p10

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 199
    mul-float v2, v18, v17

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_262

    const/4 v14, 0x1

    .line 200
    :goto_d9
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    move/from16 v0, p11

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 201
    mul-float v2, v22, v17

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_265

    const/4 v15, 0x1

    .line 204
    :cond_ef
    :goto_ef
    if-eqz v16, :cond_11d

    .line 205
    const/high16 v2, 0x3f80

    mul-float v3, v17, v23

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 206
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 207
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 208
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    add-int v2, p4, v19

    int-to-float v6, v2

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 211
    :cond_11d
    if-eqz v13, :cond_152

    .line 212
    const/high16 v2, 0x3f80

    mul-float v3, v17, v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 213
    const/high16 v2, 0x4334

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 214
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 215
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 216
    move/from16 v0, p2

    int-to-float v3, v0

    sub-int v2, p5, v19

    int-to-float v4, v2

    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 219
    :cond_152
    if-eqz v14, :cond_187

    .line 220
    const/high16 v2, 0x3f80

    mul-float v3, v17, v18

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 221
    const/high16 v2, -0x3d4c

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 222
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 223
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 224
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    add-int v2, p2, v19

    int-to-float v5, v2

    move/from16 v0, p5

    int-to-float v6, v0

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    :cond_187
    if-eqz v15, :cond_1bc

    .line 228
    const/high16 v2, 0x3f80

    mul-float v3, v17, v22

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 229
    const/high16 v2, 0x42b4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 230
    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 231
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 232
    sub-int v2, p3, v19

    int-to-float v3, v2

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 235
    :cond_1bc
    return-void

    .line 129
    .end local v1           #fade:Landroid/graphics/Shader;
    .end local v9           #bottomFadeStrength:F
    .end local v13           #drawBottom:Z
    .end local v14           #drawLeft:Z
    .end local v15           #drawRight:Z
    .end local v16           #drawTop:Z
    .end local v17           #fadeHeight:F
    .end local v18           #leftFadeStrength:F
    .end local v19           #length:I
    .end local v20           #matrix:Landroid/graphics/Matrix;
    .end local v21           #p:Landroid/graphics/Paint;
    .end local v22           #rightFadeStrength:F
    .end local v23           #topFadeStrength:F
    :cond_1bd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v10

    .line 130
    .local v10, childHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v2, v2, p7

    if-le v2, v10, :cond_2e

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 132
    .restart local v12       #d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int v4, v4, p7

    invoke-virtual {v12, v2, v10, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2e

    .line 138
    .end local v10           #childHeight:I
    .end local v12           #d:Landroid/graphics/drawable/Drawable;
    :cond_1fa
    if-gez p6, :cond_21e

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 140
    .restart local v12       #d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    move/from16 v0, p6

    invoke-virtual {v12, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2e

    .line 143
    .end local v12           #d:Landroid/graphics/drawable/Drawable;
    :cond_21e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    .line 144
    .local v11, childWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v2, v2, p6

    if-le v2, v11, :cond_2e

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 146
    .restart local v12       #d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v3, v3, p6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v12, v11, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2e

    .line 192
    .end local v11           #childWidth:I
    .end local v12           #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #fade:Landroid/graphics/Shader;
    .restart local v9       #bottomFadeStrength:F
    .restart local v13       #drawBottom:Z
    .restart local v14       #drawLeft:Z
    .restart local v15       #drawRight:Z
    .restart local v16       #drawTop:Z
    .restart local v17       #fadeHeight:F
    .restart local v18       #leftFadeStrength:F
    .restart local v19       #length:I
    .restart local v20       #matrix:Landroid/graphics/Matrix;
    .restart local v21       #p:Landroid/graphics/Paint;
    .restart local v22       #rightFadeStrength:F
    .restart local v23       #topFadeStrength:F
    :cond_25b
    const/16 v16, 0x0

    goto/16 :goto_a7

    .line 194
    :cond_25f
    const/4 v13, 0x0

    goto/16 :goto_bd

    .line 199
    :cond_262
    const/4 v14, 0x0

    goto/16 :goto_d9

    .line 201
    :cond_265
    const/4 v15, 0x0

    goto/16 :goto_ef
.end method

.method public getHorizontalFadingEdgeLengthCallback()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    return v0
.end method

.method public getVerticalFadingEdgeLengthCallback()I
    .registers 2

    .prologue
    .line 238
    iget v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    return v0
.end method

.method public onAttachedToWindowCallback(Lcom/android/systemui/recent/RecentsCallback;Landroid/widget/LinearLayout;Z)V
    .registers 7
    .parameter "callback"
    .parameter "layout"
    .parameter "hardwareAccelerated"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-nez p3, :cond_36

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_b

    .line 79
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_35

    .line 83
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    .line 84
    iput-object p2, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 85
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mAttachedToWindow:Z

    .line 86
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->updateShowBackground()V

    .line 91
    :cond_35
    return-void

    :cond_36
    move v0, v2

    .line 76
    goto :goto_5
.end method

.method public onLayoutCallback()V
    .registers 3

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_e

    .line 110
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$1;-><init>(Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 116
    :cond_e
    return-void
.end method

.method public setLayoutTransitionCallback(Landroid/animation/LayoutTransition;)V
    .registers 3
    .parameter "transition"

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_e

    .line 247
    if-eqz p1, :cond_e

    .line 248
    new-instance v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$2;-><init>(Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 263
    :cond_e
    return-void
.end method

.method public updateShowBackground()V
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, isNotShowbackground:Z
    iget-boolean v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mAttachedToWindow:Z

    if-nez v9, :cond_8

    .line 307
    :cond_7
    return-void

    .line 276
    :cond_8
    iget-boolean v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v9, :cond_7

    .line 277
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v5

    .line 278
    .local v5, transition:Landroid/animation/LayoutTransition;
    iget-boolean v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v9, :cond_72

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    .line 280
    .local v2, linearLayoutSize:I
    :goto_1c
    iget-boolean v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v9, :cond_79

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 284
    .local v3, scrollViewSize:I
    :goto_26
    if-eqz v1, :cond_80

    if-le v2, v3, :cond_80

    if-eqz v5, :cond_32

    invoke-virtual {v5}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v9

    if-nez v9, :cond_80

    :cond_32
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v9}, Lcom/android/systemui/recent/RecentsCallback;->isRecentsVisible()Z

    move-result v9

    if-eqz v9, :cond_80

    move v4, v7

    .line 289
    .local v4, show:Z
    :goto_3b
    iget-boolean v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFirstTime:Z

    if-nez v9, :cond_43

    iget-boolean v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mShowBackground:Z

    if-eq v4, v9, :cond_7

    .line 290
    :cond_43
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mShowBackground:Z

    .line 291
    iput-boolean v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFirstTime:Z

    .line 293
    iget-object v10, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    if-nez v4, :cond_82

    move v9, v7

    :goto_4c
    invoke-interface {v10, v9}, Lcom/android/systemui/recent/RecentsCallback;->handleShowBackground(Z)V

    .line 294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_50
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v0, v9, :cond_7

    .line 295
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 296
    .local v6, v:Landroid/view/View;
    if-eqz v4, :cond_84

    .line 297
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    invoke-virtual {v6, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 299
    invoke-virtual {v6}, Landroid/view/View;->buildDrawingCache()V

    .line 294
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 278
    .end local v0           #i:I
    .end local v2           #linearLayoutSize:I
    .end local v3           #scrollViewSize:I
    .end local v4           #show:Z
    .end local v6           #v:Landroid/view/View;
    :cond_72
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    goto :goto_1c

    .line 280
    .restart local v2       #linearLayoutSize:I
    :cond_79
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_26

    .restart local v3       #scrollViewSize:I
    :cond_80
    move v4, v8

    .line 284
    goto :goto_3b

    .restart local v4       #show:Z
    :cond_82
    move v9, v8

    .line 293
    goto :goto_4c

    .line 301
    .restart local v0       #i:I
    .restart local v6       #v:Landroid/view/View;
    :cond_84
    invoke-virtual {v6, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 302
    invoke-virtual {v6}, Landroid/view/View;->destroyDrawingCache()V

    .line 303
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6f
.end method
