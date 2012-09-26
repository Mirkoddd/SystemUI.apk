.class public Lcom/android/systemui/Nyandroid;
.super Landroid/app/Activity;
.source "Nyandroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/Nyandroid$Board;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mBoard:Lcom/android/systemui/Nyandroid$Board;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public onResume()V
    .registers 3

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 235
    new-instance v0, Lcom/android/systemui/Nyandroid$Board;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/Nyandroid$Board;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/systemui/Nyandroid;->mBoard:Lcom/android/systemui/Nyandroid$Board;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/Nyandroid;->mBoard:Lcom/android/systemui/Nyandroid$Board;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid;->setContentView(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/Nyandroid;->mBoard:Lcom/android/systemui/Nyandroid$Board;

    new-instance v1, Lcom/android/systemui/Nyandroid$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/Nyandroid$1;-><init>(Lcom/android/systemui/Nyandroid;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/Nyandroid$Board;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 246
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 230
    return-void
.end method

.method public onUserInteraction()V
    .registers 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid;->finish()V

    .line 252
    return-void
.end method
