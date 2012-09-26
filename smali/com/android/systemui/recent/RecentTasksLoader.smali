.class public Lcom/android/systemui/recent/RecentTasksLoader;
.super Ljava/lang/Object;
.source "RecentTasksLoader.java"


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_TASKS:I = 0x14

.field private static final MAX_TASKS:I = 0x15

.field static final TAG:Ljava/lang/String; = "RecentTasksLoader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mThumbnailLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 14
    .parameter "context"

    .prologue
    const/16 v11, 0xa0

    const/16 v10, 0x140

    const/16 v8, 0xf0

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 76
    .local v6, res:Landroid/content/res/Resources;
    const/high16 v9, 0x7f07

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 77
    .local v5, isTablet:Z
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v3, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 78
    .local v3, density:I
    if-eqz v5, :cond_6f

    .line 79
    const/16 v9, 0x78

    if-ne v3, v9, :cond_60

    .line 80
    iput v11, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    .line 92
    :cond_23
    :goto_23
    if-eqz v5, :cond_78

    :goto_25
    iput v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    .line 95
    const v8, 0x1050002

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 96
    .local v7, width:I
    const v8, 0x1050001

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 97
    .local v4, height:I
    const v8, 0x7f0201d8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 99
    .local v2, color:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    .line 100
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 101
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 105
    iget-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 108
    .local v0, am:Landroid/app/ActivityManager;
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    .line 109
    return-void

    .line 81
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #color:I
    .end local v4           #height:I
    .end local v7           #width:I
    :cond_60
    if-ne v3, v11, :cond_65

    .line 82
    iput v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    goto :goto_23

    .line 83
    :cond_65
    if-ne v3, v8, :cond_6a

    .line 84
    iput v10, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    goto :goto_23

    .line 85
    :cond_6a
    if-ne v3, v10, :cond_23

    .line 87
    iput v10, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    goto :goto_23

    .line 90
    :cond_6f
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v9, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    goto :goto_23

    .line 92
    :cond_78
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_25
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .parameter "info"
    .parameter "packageManager"

    .prologue
    .line 217
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_17

    move-result-object v2

    .line 222
    .local v2, resources:Landroid/content/res/Resources;
    :goto_8
    if-eqz v2, :cond_1a

    .line 223
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 224
    .local v1, iconId:I
    if-eqz v1, :cond_1a

    .line 225
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 228
    .end local v1           #iconId:I
    :goto_16
    return-object v3

    .line 219
    .end local v2           #resources:Landroid/content/res/Resources;
    :catch_17
    move-exception v0

    .line 220
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2       #resources:Landroid/content/res/Resources;
    goto :goto_8

    .line 228
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1a
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_16
.end method

.method private loadThumbnailsInBackground(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, descriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v2, 0x0

    .line 279
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 281
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnail(Lcom/android/systemui/recent/TaskDescription;)V

    .line 282
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_27

    .line 283
    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$1;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 333
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 336
    :cond_27
    return-void
.end method


# virtual methods
.method public cancelLoadingThumbnails()V
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_d

    .line 233
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 236
    :cond_d
    return-void
.end method

.method createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/recent/TaskDescription;
    .registers 24
    .parameter "taskId"
    .parameter "persistentTaskId"
    .parameter "baseIntent"
    .parameter "origActivity"
    .parameter "description"
    .parameter "homeInfo"

    .prologue
    .line 123
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 124
    .local v12, intent:Landroid/content/Intent;
    if-eqz p4, :cond_e

    .line 125
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 127
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 128
    .local v15, pm:Landroid/content/pm/PackageManager;
    if-nez p6, :cond_2a

    .line 129
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p6

    .line 133
    :cond_2a
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x200001

    and-int/2addr v2, v3

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v15, v12, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 136
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_da

    .line 137
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 138
    .local v11, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v11, v15}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 141
    .local v16, title:Ljava/lang/String;
    new-instance v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 142
    .local v8, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v14

    .line 143
    .local v14, mAppPolicy:Landroid/app/enterprise/ApplicationPolicy;
    iget-object v2, v11, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;)[B

    move-result-object v10

    .line 144
    .local v10, imageData:[B
    const/4 v9, 0x0

    .line 145
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_70

    .line 146
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 147
    .local v13, is:Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    invoke-static {v13, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 148
    const-string v2, "RecentTasksLoader"

    const-string v3, "ApplicationIcon obtained from EDM database"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v13           #is:Ljava/io/ByteArrayInputStream;
    :cond_70
    if-nez v9, :cond_8c

    .line 151
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_84

    .line 152
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v2, :cond_d5

    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_80
    invoke-virtual {v15, v2}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 155
    :cond_84
    if-nez v9, :cond_8c

    .line 156
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 160
    :cond_8c
    if-eqz v16, :cond_da

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_da

    if-eqz v9, :cond_da

    .line 164
    new-instance v1, Lcom/android/systemui/recent/TaskDescription;

    iget-object v6, v11, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/recent/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 167
    .local v1, item:Lcom/android/systemui/recent/TaskDescription;
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/TaskDescription;->setLabel(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v1, v9}, Lcom/android/systemui/recent/TaskDescription;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 171
    if-eqz p6, :cond_d4

    move-object/from16 v0, p6

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    move-object/from16 v0, p6

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 174
    const/4 v1, 0x0

    .line 182
    .end local v1           #item:Lcom/android/systemui/recent/TaskDescription;
    .end local v8           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v9           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #imageData:[B
    .end local v11           #info:Landroid/content/pm/ActivityInfo;
    .end local v14           #mAppPolicy:Landroid/app/enterprise/ApplicationPolicy;
    .end local v16           #title:Ljava/lang/String;
    :cond_d4
    :goto_d4
    return-object v1

    .line 152
    .restart local v8       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v9       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v10       #imageData:[B
    .restart local v11       #info:Landroid/content/pm/ActivityInfo;
    .restart local v14       #mAppPolicy:Landroid/app/enterprise/ApplicationPolicy;
    .restart local v16       #title:Ljava/lang/String;
    :cond_d5
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_80

    .line 182
    .end local v8           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v9           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #imageData:[B
    .end local v11           #info:Landroid/content/pm/ActivityInfo;
    .end local v14           #mAppPolicy:Landroid/app/enterprise/ApplicationPolicy;
    .end local v16           #title:Ljava/lang/String;
    :cond_da
    const/4 v1, 0x0

    goto :goto_d4
.end method

.method public getDefaultThumbnail()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 202
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 208
    :try_start_0
    iget v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 210
    :goto_6
    return-object v1

    .line 209
    :catch_7
    move-exception v0

    .line 210
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_6
.end method

.method getRecentTasks()Ljava/util/ArrayList;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnails()V

    .line 242
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v18, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 244
    .local v14, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 247
    .local v8, am:Landroid/app/ActivityManager;
    const/16 v1, 0x15

    const/4 v2, 0x2

    invoke-virtual {v8, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v16

    .line 250
    .local v16, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 253
    .local v7, homeInfo:Landroid/content/pm/ActivityInfo;
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 254
    .local v17, recentTasksToKeepInCache:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v13

    .line 257
    .local v13, numTasks:I
    const/4 v9, 0x1

    .line 258
    .local v9, first:I
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    const/4 v10, 0x1

    .local v10, i:I
    const/4 v11, 0x0

    .local v11, index:I
    :goto_55
    if-ge v10, v13, :cond_7f

    const/16 v1, 0x15

    if-ge v11, v1, :cond_7f

    .line 260
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 262
    .local v15, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    iget v2, v15, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v3, v15, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v4, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v5, v15, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v6, v15, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recent/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/recent/TaskDescription;

    move-result-object v12

    .line 266
    .local v12, item:Lcom/android/systemui/recent/TaskDescription;
    if-eqz v12, :cond_7c

    .line 267
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v11, v11, 0x1

    .line 259
    :cond_7c
    add-int/lit8 v10, v10, 0x1

    goto :goto_55

    .line 274
    .end local v12           #item:Lcom/android/systemui/recent/TaskDescription;
    .end local v15           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_7f
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailsInBackground(Ljava/util/ArrayList;)V

    .line 275
    return-object v18
.end method

.method loadThumbnail(Lcom/android/systemui/recent/TaskDescription;)V
    .registers 6
    .parameter "td"

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 188
    .local v0, am:Landroid/app/ActivityManager;
    iget v2, p1, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v1

    .line 192
    .local v1, thumbs:Landroid/app/ActivityManager$TaskThumbnails;
    monitor-enter p1

    .line 193
    if-eqz v1, :cond_1e

    :try_start_13
    iget-object v2, v1, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1e

    .line 194
    iget-object v2, v1, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 198
    :goto_1c
    monitor-exit p1

    .line 199
    return-void

    .line 196
    :cond_1e
    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_1c

    .line 198
    :catchall_24
    move-exception v2

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;)V
    .registers 2
    .parameter "recentsPanel"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 113
    return-void
.end method
