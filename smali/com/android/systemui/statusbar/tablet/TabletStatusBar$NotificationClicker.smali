.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationClicker"
.end annotation


# instance fields
.field private mId:I

.field private mIntent:Landroid/app/PendingIntent;

.field private mPkg:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter "intent"
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 2085
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2086
    iput-object p2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    .line 2087
    iput-object p3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mPkg:Ljava/lang/String;

    .line 2088
    iput-object p4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mTag:Ljava/lang/String;

    .line 2089
    iput p5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mId:I

    .line 2090
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2098
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 2101
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_8b

    .line 2105
    :goto_10
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_55

    .line 2106
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 2107
    .local v3, pos:[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2108
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2109
    .local v2, overlay:Landroid/content/Intent;
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v3, v10

    aget v6, v3, v9

    aget v7, v3, v10

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v3, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2112
    :try_start_39
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v5, v5, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_43
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_39 .. :try_end_43} :catch_6f

    .line 2119
    :goto_43
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 2121
    .local v1, kgm:Landroid/app/KeyguardManager;
    if-eqz v1, :cond_55

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 2125
    .end local v1           #kgm:Landroid/app/KeyguardManager;
    .end local v2           #overlay:Landroid/content/Intent;
    .end local v3           #pos:[I
    :cond_55
    :try_start_55
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$1800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mTag:Ljava/lang/String;

    iget v7, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->mId:I

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_64} :catch_89

    .line 2131
    :goto_64
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 2132
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    .line 2136
    return-void

    .line 2114
    .restart local v2       #overlay:Landroid/content/Intent;
    .restart local v3       #pos:[I
    :catch_6f
    move-exception v0

    .line 2116
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "TabletStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending contentIntent failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 2126
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v2           #overlay:Landroid/content/Intent;
    .end local v3           #pos:[I
    :catch_89
    move-exception v4

    goto :goto_64

    .line 2102
    :catch_8b
    move-exception v4

    goto :goto_10
.end method
