.class Lcom/android/systemui/statusbar/StatusBar$1;
.super Landroid/os/Handler;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBar;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/StatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 151
    :goto_5
    return-void

    .line 148
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/StatusBar;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/systemui/statusbar/StatusBar;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBar;->access$000(Lcom/android/systemui/statusbar/StatusBar;I)V

    goto :goto_5

    .line 146
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
