.class public Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanelDataStorage;
.super Ljava/lang/Object;
.source "MiniModeAppsPanelDataStorage.java"


# static fields
.field private static final FILENAME:Ljava/lang/String; = "minimode"

.field public static final TAG:Ljava/lang/String; = "MiniModeAppsPanelDataStorage"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/io/File;)[Ljava/lang/String;
    .registers 12
    .parameter "dir"

    .prologue
    .line 22
    new-instance v3, Ljava/io/File;

    const-string v9, "minimode"

    invoke-direct {v3, p0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .local v3, f:Ljava/io/File;
    const/4 v4, 0x0

    .line 24
    .local v4, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 26
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v8, strArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_e
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_61
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_8b

    .line 30
    .end local v4           #fr:Ljava/io/FileReader;
    .local v5, fr:Ljava/io/FileReader;
    :try_start_13
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_84
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_8d

    .line 33
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_18
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, s:Ljava/lang/String;
    if-eqz v6, :cond_3e

    .line 34
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_87
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_18

    .line 36
    .end local v6           #s:Ljava/lang/String;
    :catch_22
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 37
    .end local v5           #fr:Ljava/io/FileReader;
    .local v2, e:Ljava/lang/Exception;
    .restart local v4       #fr:Ljava/io/FileReader;
    :goto_25
    :try_start_25
    const-string v9, "MiniModeAppsPanelDataStorage"

    const-string v10, "minimode file does not exist."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_61

    .line 41
    if-eqz v0, :cond_31

    .line 42
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_57

    .line 48
    :cond_31
    :goto_31
    if-eqz v4, :cond_36

    .line 49
    :try_start_33
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_5c

    .line 56
    .end local v2           #e:Ljava/lang/Exception;
    :cond_36
    :goto_36
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_77

    .line 57
    const/4 v9, 0x0

    .line 62
    :goto_3d
    return-object v9

    .line 41
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v6       #s:Ljava/lang/String;
    :cond_3e
    if-eqz v1, :cond_43

    .line 42
    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_4b

    .line 48
    :cond_43
    :goto_43
    if-eqz v5, :cond_48

    .line 49
    :try_start_45
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_50

    :cond_48
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 53
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_36

    .line 44
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_4b
    move-exception v2

    .line 45
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43

    .line 51
    .end local v2           #e:Ljava/lang/Exception;
    :catch_50
    move-exception v2

    .line 52
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 54
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_36

    .line 44
    .end local v6           #s:Ljava/lang/String;
    :catch_57
    move-exception v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31

    .line 51
    :catch_5c
    move-exception v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    .line 40
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_61
    move-exception v9

    .line 41
    :goto_62
    if-eqz v0, :cond_67

    .line 42
    :try_start_64
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_6d

    .line 48
    :cond_67
    :goto_67
    if-eqz v4, :cond_6c

    .line 49
    :try_start_69
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_72

    .line 53
    :cond_6c
    :goto_6c
    throw v9

    .line 44
    :catch_6d
    move-exception v2

    .line 45
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_67

    .line 51
    .end local v2           #e:Ljava/lang/Exception;
    :catch_72
    move-exception v2

    .line 52
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c

    .line 60
    .end local v2           #e:Ljava/lang/Exception;
    :cond_77
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v7, v9, [Ljava/lang/String;

    .line 62
    .local v7, str:[Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    goto :goto_3d

    .line 40
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v7           #str:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_84
    move-exception v9

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_62

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_87
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_62

    .line 36
    :catch_8b
    move-exception v2

    goto :goto_25

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_8d
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_25
.end method

.method public static store(Ljava/io/File;[Ljava/lang/String;)Z
    .registers 14
    .parameter "dir"
    .parameter "str"

    .prologue
    .line 66
    new-instance v4, Ljava/io/File;

    const-string v11, "minimode"

    invoke-direct {v4, p0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v4, f:Ljava/io/File;
    const/4 v5, 0x0

    .line 68
    .local v5, fw:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 70
    .local v1, bw:Ljava/io/BufferedWriter;
    const/4 v9, 0x1

    .line 73
    .local v9, returnValue:Z
    :try_start_a
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_3d

    .line 74
    .end local v5           #fw:Ljava/io/FileWriter;
    .local v6, fw:Ljava/io/FileWriter;
    :try_start_f
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_74

    .line 76
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .local v2, bw:Ljava/io/BufferedWriter;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    :try_start_15
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_17
    if-ge v7, v8, :cond_24

    aget-object v10, v0, v7

    .line 77
    .local v10, s:Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_70
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_77

    .line 76
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 85
    .end local v10           #s:Ljava/lang/String;
    :cond_24
    if-eqz v2, :cond_29

    .line 86
    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_31

    .line 92
    :cond_29
    :goto_29
    if-eqz v6, :cond_2e

    .line 93
    :try_start_2b
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_36

    :cond_2e
    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 100
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v6           #fw:Ljava/io/FileWriter;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .restart local v5       #fw:Ljava/io/FileWriter;
    :cond_30
    :goto_30
    return v9

    .line 88
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    :catch_31
    move-exception v3

    .line 89
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29

    .line 95
    .end local v3           #e:Ljava/lang/Exception;
    :catch_36
    move-exception v3

    .line 96
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 98
    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_30

    .line 80
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :catch_3d
    move-exception v3

    .line 81
    .restart local v3       #e:Ljava/lang/Exception;
    :goto_3e
    :try_start_3e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_57

    .line 82
    const/4 v9, 0x0

    .line 85
    if-eqz v1, :cond_47

    .line 86
    :try_start_44
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_52

    .line 92
    :cond_47
    :goto_47
    if-eqz v5, :cond_30

    .line 93
    :try_start_49
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_30

    .line 95
    :catch_4d
    move-exception v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    .line 88
    :catch_52
    move-exception v3

    .line 89
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    .line 84
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_57
    move-exception v11

    .line 85
    :goto_58
    if-eqz v1, :cond_5d

    .line 86
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_63

    .line 92
    :cond_5d
    :goto_5d
    if-eqz v5, :cond_62

    .line 93
    :try_start_5f
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_68

    .line 97
    :cond_62
    :goto_62
    throw v11

    .line 88
    :catch_63
    move-exception v3

    .line 89
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5d

    .line 95
    .end local v3           #e:Ljava/lang/Exception;
    :catch_68
    move-exception v3

    .line 96
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_62

    .line 84
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catchall_6d
    move-exception v11

    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_58

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catchall_70
    move-exception v11

    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_58

    .line 80
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catch_74
    move-exception v3

    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_3e

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catch_77
    move-exception v3

    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_3e
.end method
