.class Lcom/android/systemui/screenshot/TakeScreenshotService$1$3;
.super Ljava/lang/Object;
.source "TakeScreenshotService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

.field final synthetic val$callbackRTL:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$3;->this$1:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    iput-object p2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$3;->val$callbackRTL:Landroid/os/Messenger;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 80
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, reply:Landroid/os/Message;
    :try_start_6
    iget-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$3;->val$callbackRTL:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 85
    :goto_b
    return-void

    .line 83
    :catch_c
    move-exception v1

    goto :goto_b
.end method
