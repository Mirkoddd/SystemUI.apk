.class Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;
.super Landroid/os/Handler;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .registers 2
    .parameter

    .prologue
    .line 2821
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 2824
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_36

    .line 2843
    :cond_5
    :goto_5
    return-void

    .line 2826
    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_19

    .line 2827
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x11001

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_5

    .line 2830
    :cond_19
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "Failed to connect to wifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2834
    :sswitch_21
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    if-eq v0, v1, :cond_5

    .line 2835
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    .line 2836
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_5

    .line 2824
    nop

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_21
        0x11000 -> :sswitch_6
    .end sparse-switch
.end method
