.class public Lcom/android/systemui/LoadAverageService;
.super Landroid/app/Service;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/LoadAverageService$LoadView;,
        Lcom/android/systemui/LoadAverageService$Stats;
    }
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 8

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 288
    new-instance v1, Lcom/android/systemui/LoadAverageService$LoadView;

    invoke-direct {v1, p0, p0}, Lcom/android/systemui/LoadAverageService$LoadView;-><init>(Lcom/android/systemui/LoadAverageService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService;->mView:Landroid/view/View;

    .line 289
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7df

    const/16 v4, 0x18

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 296
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 297
    const-string v1, "Load Average"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/systemui/LoadAverageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 299
    .local v6, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/systemui/LoadAverageService;->mView:Landroid/view/View;

    invoke-interface {v6, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 305
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/systemui/LoadAverageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/LoadAverageService;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService;->mView:Landroid/view/View;

    .line 307
    return-void
.end method
