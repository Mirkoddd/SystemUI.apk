.class Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationQueueEntry"
.end annotation


# instance fields
.field key:Landroid/os/IBinder;

.field notification:Lcom/android/internal/statusbar/StatusBarNotification;

.field final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/CommandQueue$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;-><init>(Lcom/android/systemui/statusbar/CommandQueue;)V

    return-void
.end method
