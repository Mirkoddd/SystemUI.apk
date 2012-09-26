.class public Lcom/android/systemui/statusbar/tablet/ShirtPocket;
.super Landroid/widget/ImageView;
.source "ShirtPocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBar/ShirtPocket"


# instance fields
.field mAnimHide:Landroid/animation/ObjectAnimator;

.field mAnimShow:Landroid/animation/ObjectAnimator;

.field private mClipping:Landroid/content/ClipData;

.field private mPreviewIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/tablet/ShirtPocket;Landroid/content/ClipData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->stash(Landroid/content/ClipData;)V

    return-void
.end method

.method private stash(Landroid/content/ClipData;)V
    .registers 4
    .parameter "clipping"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    .line 141
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    if-eqz v1, :cond_1f

    .line 142
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_16

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    .end local v0           #icon:Landroid/graphics/Bitmap;
    :cond_15
    :goto_15
    return-void

    .line 148
    .restart local v0       #icon:Landroid/graphics/Bitmap;
    :cond_16
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_15

    goto :goto_15

    .line 154
    .end local v0           #icon:Landroid/graphics/Bitmap;
    :cond_1f
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->setVisibility(I)V

    goto :goto_15
.end method


# virtual methods
.method public holding()Z
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 133
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 161
    .local v0, action:I
    if-nez v0, :cond_1e

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    .line 163
    .local v1, clip:Landroid/content/ClipData;
    if-eqz v1, :cond_1e

    .line 164
    invoke-virtual {v1}, Landroid/content/ClipData;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 166
    .local v2, icon:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1f

    .line 167
    new-instance v3, Lcom/android/systemui/statusbar/tablet/ShirtPocket$1;

    invoke-direct {v3, p0, p0, v2}, Lcom/android/systemui/statusbar/tablet/ShirtPocket$1;-><init>(Lcom/android/systemui/statusbar/tablet/ShirtPocket;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 181
    .local v3, shadow:Landroid/view/View$DragShadowBuilder;
    :goto_17
    invoke-virtual {p0, v1, v3, v5, v4}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 184
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->stash(Landroid/content/ClipData;)V

    .line 186
    const/4 v4, 0x1

    .line 189
    .end local v1           #clip:Landroid/content/ClipData;
    .end local v2           #icon:Landroid/graphics/Bitmap;
    .end local v3           #shadow:Landroid/view/View$DragShadowBuilder;
    :cond_1e
    return v4

    .line 178
    .restart local v1       #clip:Landroid/content/ClipData;
    .restart local v2       #icon:Landroid/graphics/Bitmap;
    :cond_1f
    new-instance v3, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v3, p0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .restart local v3       #shadow:Landroid/view/View$DragShadowBuilder;
    goto :goto_17
.end method
