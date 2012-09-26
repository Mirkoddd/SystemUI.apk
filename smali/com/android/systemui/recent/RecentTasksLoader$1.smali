.class Lcom/android/systemui/recent/RecentTasksLoader$1;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailsInBackground(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;

.field final synthetic val$descriptions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 283
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 12
    .parameter "params"

    .prologue
    const/4 v8, 0x1

    .line 303
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    .line 304
    .local v5, origPri:I
    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 306
    .local v1, nextTime:J
    const/4 v0, 0x1

    .local v0, i:I
    :goto_11
    iget-object v7, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3c

    .line 307
    iget-object v7, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/TaskDescription;

    .line 308
    .local v6, td:Lcom/android/systemui/recent/TaskDescription;
    iget-object v7, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v7, v6}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnail(Lcom/android/systemui/recent/TaskDescription;)V

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 310
    .local v3, now:J
    const-wide/16 v7, 0x0

    add-long/2addr v1, v7

    .line 311
    cmp-long v7, v1, v3

    if-lez v7, :cond_36

    .line 313
    sub-long v7, v1, v3

    :try_start_33
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_5b

    .line 318
    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 329
    .end local v3           #now:J
    .end local v6           #td:Lcom/android/systemui/recent/TaskDescription;
    :cond_3c
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 330
    const/4 v7, 0x0

    return-object v7

    .line 321
    .restart local v3       #now:J
    .restart local v6       #td:Lcom/android/systemui/recent/TaskDescription;
    :cond_41
    monitor-enter v6

    .line 322
    const/4 v7, 0x1

    :try_start_43
    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/RecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_58

    .line 324
    const-wide/16 v7, 0x1f4

    :try_start_51
    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_58
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_54} :catch_5d

    .line 327
    :goto_54
    :try_start_54
    monitor-exit v6

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 327
    :catchall_58
    move-exception v7

    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_58

    throw v7

    .line 314
    :catch_5b
    move-exception v7

    goto :goto_36

    .line 325
    :catch_5d
    move-exception v7

    goto :goto_54
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 5
    .parameter "values"

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    .line 287
    .local v0, td:Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 288
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$000(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V

    .line 292
    :cond_1e
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$100(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recent/RecentTasksLoader$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/recent/RecentTasksLoader$1$1;-><init>(Lcom/android/systemui/recent/RecentTasksLoader$1;Lcom/android/systemui/recent/TaskDescription;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 283
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
