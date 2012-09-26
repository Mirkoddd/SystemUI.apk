.class Lcom/android/systemui/statusbar/tablet/HoloClock$1;
.super Landroid/content/BroadcastReceiver;
.source "HoloClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/HoloClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/HoloClock;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 140
    const-string v2, "time-zone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, tz:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    #setter for: Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/tablet/HoloClock;->access$002(Lcom/android/systemui/statusbar/tablet/HoloClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 142
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    #getter for: Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/HoloClock;->access$100(Lcom/android/systemui/statusbar/tablet/HoloClock;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 143
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    #getter for: Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/android/systemui/statusbar/tablet/HoloClock;->access$100(Lcom/android/systemui/statusbar/tablet/HoloClock;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    #getter for: Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/HoloClock;->access$000(Lcom/android/systemui/statusbar/tablet/HoloClock;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 146
    .end local v1           #tz:Ljava/lang/String;
    :cond_3a
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;->this$0:Lcom/android/systemui/statusbar/tablet/HoloClock;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/HoloClock;->updateClock()V

    .line 147
    return-void
.end method
