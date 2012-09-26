.class public Lcom/android/systemui/statusbar/policy/LocationController;
.super Landroid/content/BroadcastReceiver;
.source "LocationController.java"


# static fields
.field private static final GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri; = null

.field private static final GPS_NOTIFICATION_ID:I = 0x3d8d7

.field private static final TAG:Ljava/lang/String; = "StatusBar.LocationController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-LocationController"

.field private static final USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "use_location_for_services"

.field private static final sLBSImages:[I


# instance fields
.field private LBS_ENABLED:Ljava/lang/String;

.field private LBS_ENABLED_CHANGE_ACTION:Ljava/lang/String;

.field private VZW_PROVIDER:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationService:Landroid/app/INotificationManager;

.field private mService:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationController;->sLBSImages:[I

    .line 92
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationController;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    return-void

    .line 83
    nop

    :array_12
    .array-data 0x4
        0xaet 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 82
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mService:Landroid/app/StatusBarManager;

    .line 88
    const-string v2, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->LBS_ENABLED_CHANGE_ACTION:Ljava/lang/String;

    .line 89
    const-string v2, "lbsEnabled"

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->LBS_ENABLED:Ljava/lang/String;

    .line 90
    const-string v2, "vzw_lbs"

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->VZW_PROVIDER:Ljava/lang/String;

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mIconViews:Ljava/util/ArrayList;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 130
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    .line 138
    return-void
.end method

.method private checkLBSStatus()Z
    .registers 2

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method private updateIconView(IZ)V
    .registers 7
    .parameter "iconId"
    .parameter "visible"

    .prologue
    .line 105
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 106
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 107
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 108
    .local v2, v:Landroid/widget/ImageView;
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    if-eqz p2, :cond_1d

    const/4 v3, 0x0

    :goto_17
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 109
    :cond_1d
    const/16 v3, 0x8

    goto :goto_17

    .line 111
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_20
    return-void
.end method

.method private final updateLBS(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 327
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, action:Ljava/lang/String;
    const-string v1, "enabled"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 211
    .local v9, enabled:Z
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    if-eqz v9, :cond_74

    .line 214
    const v11, 0x1080551

    .line 215
    .local v11, iconId:I
    const v13, 0x7f080081

    .line 216
    .local v13, textResId:I
    const/4 v14, 0x1

    .line 262
    .local v14, visible:Z
    :goto_1e
    invoke-direct {p0, v11, v14}, Lcom/android/systemui/statusbar/policy/LocationController;->updateIconView(IZ)V

    .line 266
    if-eqz v14, :cond_8a

    .line 267
    :try_start_23
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v10, gpsIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 271
    .local v12, pendingIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 279
    .local v6, n:Landroid/app/Notification;
    const/4 v1, 0x0

    iput-object v1, v6, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 280
    const/4 v1, 0x0

    iput-object v1, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 282
    const/4 v1, 0x1

    new-array v7, v1, [I

    .line 283
    .local v7, idOut:[I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x3d8d7

    sget v5, Lcom/android/internal/statusbar/StatusBarNotification;->PRIORITY_SYSTEM:I

    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTagPriority(Ljava/lang/String;Ljava/lang/String;IILandroid/app/Notification;[I)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_73} :catch_99

    .line 298
    .end local v6           #n:Landroid/app/Notification;
    .end local v7           #idOut:[I
    .end local v10           #gpsIntent:Landroid/content/Intent;
    .end local v12           #pendingIntent:Landroid/app/PendingIntent;
    :goto_73
    return-void

    .line 220
    .end local v11           #iconId:I
    .end local v13           #textResId:I
    .end local v14           #visible:Z
    :cond_74
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    if-nez v9, :cond_82

    .line 223
    const/4 v14, 0x0

    .line 224
    .restart local v14       #visible:Z
    const/4 v13, 0x0

    .restart local v13       #textResId:I
    move v11, v13

    .restart local v11       #iconId:I
    goto :goto_1e

    .line 232
    .end local v11           #iconId:I
    .end local v13           #textResId:I
    .end local v14           #visible:Z
    :cond_82
    const v11, 0x7f0200ad

    .line 233
    .restart local v11       #iconId:I
    const v13, 0x7f080080

    .line 234
    .restart local v13       #textResId:I
    const/4 v14, 0x1

    .restart local v14       #visible:Z
    goto :goto_1e

    .line 291
    :cond_8a
    :try_start_8a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x3d8d7

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_98} :catch_99

    goto :goto_73

    .line 295
    :catch_99
    move-exception v1

    goto :goto_73
.end method
