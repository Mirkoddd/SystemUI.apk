.class public Lcom/android/systemui/Nyandroid$Board$FlyingCat;
.super Landroid/widget/ImageView;
.source "Nyandroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/Nyandroid$Board;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlyingCat"
.end annotation


# static fields
.field public static final VMAX:F = 1000.0f

.field public static final VMIN:F = 100.0f


# instance fields
.field public component:Landroid/content/ComponentName;

.field public dist:F

.field final synthetic this$0:Lcom/android/systemui/Nyandroid$Board;

.field public v:F

.field public vr:F

.field public z:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/Nyandroid$Board;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "as"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->this$0:Lcom/android/systemui/Nyandroid$Board;

    .line 89
    invoke-direct {p0, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    const v0, 0x7f02004f

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setImageResource(I)V

    .line 93
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 101
    const v1, 0x3dcccccd

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->z:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Nyandroid$Board;->lerp(FFF)F

    move-result v0

    .line 102
    .local v0, scale:F
    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setScaleX(F)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setScaleY(F)V

    .line 104
    neg-float v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setX(F)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->this$0:Lcom/android/systemui/Nyandroid$Board;

    invoke-virtual {v1}, Lcom/android/systemui/Nyandroid$Board;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setY(F)V

    .line 106
    const/high16 v1, 0x42c8

    const/high16 v2, 0x447a

    iget v3, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->z:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Nyandroid$Board;->lerp(FFF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->v:F

    .line 108
    iput v4, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->dist:F

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 96
    const-string v0, "<cat (%.1f, %.1f) (%d x %d)>"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .registers 4
    .parameter "dt"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->dist:F

    iget v1, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->v:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->dist:F

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->v:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setX(F)V

    .line 116
    return-void
.end method
