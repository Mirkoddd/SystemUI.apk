.class Lcom/android/systemui/statusbar/policy/AutoRotateController$1;
.super Ljava/lang/Object;
.source "AutoRotateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/AutoRotateController;->setAutoRotation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;

.field final synthetic val$autorotate:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AutoRotateController;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;->this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;->val$autorotate:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 65
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 67
    .local v1, wm:Landroid/view/IWindowManager;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;->val$autorotate:Z

    if-eqz v2, :cond_12

    .line 68
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V

    .line 75
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_11
    return-void

    .line 70
    .restart local v1       #wm:Landroid/view/IWindowManager;
    :cond_12
    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_11

    .line 72
    .end local v1           #wm:Landroid/view/IWindowManager;
    :catch_17
    move-exception v0

    .line 73
    .local v0, exc:Landroid/os/RemoteException;
    const-string v2, "StatusBar.AutoRotateController"

    const-string v3, "Unable to save auto-rotate setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method
