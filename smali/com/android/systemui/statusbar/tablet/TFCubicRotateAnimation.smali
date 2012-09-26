.class public Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;
.super Landroid/view/animation/Animation;
.source "TFCubicRotateAnimation.java"


# static fields
.field public static final ANIMATION_DURATION:I = 0x10e

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x0

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x12c

.field public static final ROTATE_DOWN_IN:I = 0x2

.field public static final ROTATE_DOWN_OUT:I = 0x3

.field public static final ROTATE_UP_IN:I = 0x0

.field public static final ROTATE_UP_OUT:I = 0x1

.field public static final TRAY_HIDE_DELAY:I = 0x1a4

.field public static final TRAY_ICON_DELAY:I = 0x28

.field public static final TRAY_ICON_ITEM_COUNT:I = 0x7

.field public static final TRAY_SHOW_DELAY:I = 0x3c


# instance fields
.field private final mAxis:I

.field private mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterY:F

.field private final mFromDegrees:F

.field private final mIsOutAnimation:Z

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(I)V
    .registers 9
    .parameter "rotationType"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x42b4

    const/high16 v4, -0x3d58

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 79
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 81
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->setDuration(J)V

    .line 83
    packed-switch p1, :pswitch_data_3e

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported rotation type for TFRotate3dAnimation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_1a
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mAxis:I

    .line 86
    iput v5, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mFromDegrees:F

    .line 87
    iput v3, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mToDegrees:F

    .line 88
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mIsOutAnimation:Z

    .line 116
    :goto_22
    return-void

    .line 92
    :pswitch_23
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mAxis:I

    .line 93
    iput v3, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mFromDegrees:F

    .line 94
    iput v4, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mToDegrees:F

    .line 95
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mIsOutAnimation:Z

    goto :goto_22

    .line 99
    :pswitch_2c
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mAxis:I

    .line 100
    iput v4, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mFromDegrees:F

    .line 101
    iput v3, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mToDegrees:F

    .line 102
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mIsOutAnimation:Z

    goto :goto_22

    .line 106
    :pswitch_35
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mAxis:I

    .line 107
    iput v3, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mFromDegrees:F

    .line 108
    iput v5, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mToDegrees:F

    .line 109
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mIsOutAnimation:Z

    goto :goto_22

    .line 83
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_35
        :pswitch_1a
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 21
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mFromDegrees:F

    .line 140
    .local v5, fromDegrees:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mToDegrees:F

    sub-float/2addr v13, v5

    mul-float v13, v13, p1

    add-float v4, v5, v13

    .line 142
    .local v4, degrees:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mCenterX:F

    .line 143
    .local v2, centerX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mCenterY:F

    .line 144
    .local v3, centerY:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mCamera:Landroid/graphics/Camera;

    .line 146
    .local v1, camera:Landroid/graphics/Camera;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mAxis:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_68

    move v6, v3

    .line 147
    .local v6, half:F
    :goto_21
    const/high16 v13, 0x4000

    div-float v13, v4, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 148
    .local v8, radianOfDegreeHalf:D
    const/high16 v13, 0x4000

    float-to-double v14, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    mul-float v10, v13, v14

    .line 149
    .local v10, tmp:F
    float-to-double v13, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    double-to-float v11, v13

    .line 150
    .local v11, xy_offset:F
    float-to-double v13, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    double-to-float v12, v13

    .line 152
    .local v12, z_offset:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 154
    .local v7, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 156
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mAxis:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6a

    .line 157
    const/4 v13, 0x0

    invoke-virtual {v1, v13, v11, v12}, Landroid/graphics/Camera;->translate(FFF)V

    .line 158
    invoke-virtual {v1, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 164
    :goto_59
    invoke-virtual {v1, v7}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 165
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 167
    neg-float v13, v2

    neg-float v14, v3

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 168
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 169
    return-void

    .end local v6           #half:F
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v8           #radianOfDegreeHalf:D
    .end local v10           #tmp:F
    .end local v11           #xy_offset:F
    .end local v12           #z_offset:F
    :cond_68
    move v6, v2

    .line 146
    goto :goto_21

    .line 160
    .restart local v6       #half:F
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    .restart local v8       #radianOfDegreeHalf:D
    .restart local v10       #tmp:F
    .restart local v11       #xy_offset:F
    .restart local v12       #z_offset:F
    :cond_6a
    const/4 v13, 0x0

    invoke-virtual {v1, v11, v13, v12}, Landroid/graphics/Camera;->translate(FFF)V

    .line 161
    invoke-virtual {v1, v4}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_59
.end method

.method public initialize(IIII)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    const/high16 v1, 0x4000

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 121
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mCamera:Landroid/graphics/Camera;

    .line 123
    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mCenterX:F

    .line 124
    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mCenterY:F

    .line 125
    return-void
.end method
