.class public Lcom/android/systemui/SystemUIService;
.super Landroid/app/Service;
.source "SystemUIService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SystemUIService"


# instance fields
.field final SERVICES:[Ljava/lang/Object;

.field mServices:[Lcom/android/systemui/SystemUI;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v2, Lcom/android/systemui/power/PowerUI;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Object;

    return-void
.end method

.method private chooseClass(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 7
    .parameter "o"

    .prologue
    .line 52
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 53
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/SystemUIService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, cl:Ljava/lang/String;
    :try_start_e
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_15} :catch_17

    move-result-object p1

    .line 60
    .end local v0           #cl:Ljava/lang/String;
    :goto_16
    return-object p1

    .line 56
    .restart local v0       #cl:Ljava/lang/String;
    :catch_17
    move-exception v1

    .line 57
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 59
    .end local v0           #cl:Ljava/lang/String;
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    .restart local p1
    :cond_1e
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_25

    .line 60
    check-cast p1, Ljava/lang/Class;

    goto :goto_16

    .line 62
    :cond_25
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown system ui service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 114
    const-string v6, "android.permission.DUMP"

    invoke-virtual {p0, v6}, Lcom/android/systemui/SystemUIService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_31

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    :cond_30
    return-void

    .line 122
    :cond_31
    if-eqz p3, :cond_36

    array-length v6, p3

    if-nez v6, :cond_62

    .line 123
    :cond_36
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .local v0, arr$:[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3a
    if-ge v1, v2, :cond_30

    aget-object v5, v0, v1

    .line 124
    .local v5, ui:Lcom/android/systemui/SystemUI;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumping service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 128
    .end local v0           #arr$:[Lcom/android/systemui/SystemUI;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #ui:Lcom/android/systemui/SystemUI;
    :cond_62
    const/4 v6, 0x0

    aget-object v4, p3, v6

    .line 129
    .local v4, svc:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .restart local v0       #arr$:[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_69
    if-ge v1, v2, :cond_30

    aget-object v5, v0, v1

    .line 130
    .restart local v5       #ui:Lcom/android/systemui/SystemUI;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 132
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 129
    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_69
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .local v0, arr$:[Lcom/android/systemui/SystemUI;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 100
    .local v3, ui:Lcom/android/systemui/SystemUI;
    invoke-virtual {v3, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 102
    .end local v3           #ui:Lcom/android/systemui/SystemUI;
    :cond_e
    return-void
.end method

.method public onCreate()V
    .registers 10

    .prologue
    .line 69
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 72
    .local v5, wm:Landroid/view/IWindowManager;
    :try_start_a
    iget-object v7, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v5}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v6

    if-eqz v6, :cond_7b

    const/high16 v6, 0x7f08

    :goto_15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v8
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1b} :catch_7f

    .line 79
    :goto_1b
    iget-object v6, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Object;

    array-length v0, v6

    .line 80
    .local v0, N:I
    new-array v6, v0, [Lcom/android/systemui/SystemUI;

    iput-object v6, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    .line 81
    const/4 v4, 0x0

    .local v4, i:I
    :goto_23
    if-ge v4, v0, :cond_96

    .line 82
    iget-object v6, p0, Lcom/android/systemui/SystemUIService;->SERVICES:[Ljava/lang/Object;

    aget-object v6, v6, v4

    invoke-direct {p0, v6}, Lcom/android/systemui/SystemUIService;->chooseClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 83
    .local v1, cl:Ljava/lang/Class;
    const-string v6, "SystemUIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_45
    iget-object v7, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/SystemUI;

    aput-object v6, v7, v4
    :try_end_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_4f} :catch_88
    .catch Ljava/lang/InstantiationException; {:try_start_45 .. :try_end_4f} :catch_8f

    .line 91
    iget-object v6, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    iput-object p0, v6, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 92
    const-string v6, "SystemUIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "running: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v6, p0, Lcom/android/systemui/SystemUIService;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->start()V

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 72
    .end local v0           #N:I
    .end local v1           #cl:Ljava/lang/Class;
    .end local v4           #i:I
    :cond_7b
    const v6, 0x7f080001

    goto :goto_15

    .line 75
    :catch_7f
    move-exception v2

    .line 76
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "SystemUIService"

    const-string v7, "Failing checking whether status bar can hide"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 86
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #N:I
    .restart local v1       #cl:Ljava/lang/Class;
    .restart local v4       #i:I
    :catch_88
    move-exception v3

    .line 87
    .local v3, ex:Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 88
    .end local v3           #ex:Ljava/lang/IllegalAccessException;
    :catch_8f
    move-exception v3

    .line 89
    .local v3, ex:Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 95
    .end local v1           #cl:Ljava/lang/Class;
    .end local v3           #ex:Ljava/lang/InstantiationException;
    :cond_96
    return-void
.end method
