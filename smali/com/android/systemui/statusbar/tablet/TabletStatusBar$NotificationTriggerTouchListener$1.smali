.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener$1;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;)V
    .registers 2
    .parameter

    .prologue
    .line 2178
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener$1;->this$1:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener$1;->this$1:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    const v1, 0x10803f1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2181
    return-void
.end method
