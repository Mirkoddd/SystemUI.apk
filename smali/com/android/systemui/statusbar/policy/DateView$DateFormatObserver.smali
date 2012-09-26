.class Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;
.super Landroid/database/ContentObserver;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateFormatObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DateView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DateView;)V
    .registers 3
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 126
    const-string v0, "STATUSBAR-DateView"

    const-string v1, "DateFormatObserver-onChange() :"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    #calls: Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/DateView;->access$000(Lcom/android/systemui/statusbar/policy/DateView;)V

    .line 128
    return-void
.end method
