.class Lcom/android/systemui/statusbar/StatusBar$2;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBar;

.field final synthetic val$_id:I

.field final synthetic val$_pkg:Ljava/lang/String;

.field final synthetic val$_tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBar;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBar$2;->val$_pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/StatusBar$2;->val$_tag:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/statusbar/StatusBar$2;->val$_id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBar$2;->val$_pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBar$2;->val$_tag:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBar$2;->val$_id:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 333
    :goto_d
    return-void

    .line 330
    :catch_e
    move-exception v0

    goto :goto_d
.end method
