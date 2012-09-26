.class public Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;
.super Ljava/lang/Object;
.source "QuickSettingPanel.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SineInOut70"
.end annotation


# instance fields
.field private final segments:[[F

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 280
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-array v0, v3, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;->segments:[[F

    .line 281
    return-void

    .line 278
    nop

    :array_24
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xat 0xd7t 0x23t 0x3ct
        0x66t 0x66t 0xe6t 0x3et
    .end array-data

    :array_2e
    .array-data 0x4
        0x66t 0x66t 0xe6t 0x3et
        0xcdt 0xcct 0x4ct 0x3ft
        0xb0t 0x72t 0x68t 0x3ft
    .end array-data

    :array_38
    .array-data 0x4
        0xb0t 0x72t 0x68t 0x3ft
        0x72t 0xf9t 0x7ft 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x3

    .line 283
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-array v0, v3, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;->segments:[[F

    .line 284
    return-void

    .line 278
    nop

    :array_24
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xat 0xd7t 0x23t 0x3ct
        0x66t 0x66t 0xe6t 0x3et
    .end array-data

    :array_2e
    .array-data 0x4
        0x66t 0x66t 0xe6t 0x3et
        0xcdt 0xcct 0x4ct 0x3ft
        0xb0t 0x72t 0x68t 0x3ft
    .end array-data

    :array_38
    .array-data 0x4
        0xb0t 0x72t 0x68t 0x3ft
        0x72t 0xf9t 0x7ft 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 15
    .parameter "input"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f80

    .line 288
    div-float v0, p1, v11

    .line 289
    .local v0, _loc_5:F
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;->segments:[[F

    array-length v1, v6

    .line 290
    .local v1, _loc_6:I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 291
    .local v4, _loc_9:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;->segments:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_1a

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;->segments:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 293
    :cond_1a
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v11, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 294
    .local v2, _loc_7:F
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;->segments:[[F

    aget-object v3, v6, v4

    .line 295
    .local v3, _loc_8:[F
    const/4 v6, 0x0

    aget v7, v3, v12

    const/high16 v8, 0x4000

    sub-float v9, v11, v2

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    add-float v5, v6, v7

    .line 297
    .local v5, ret:F
    return v5
.end method
