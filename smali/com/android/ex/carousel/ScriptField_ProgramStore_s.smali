.class public Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_ProgramStore_s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .registers 4
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 34
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 35
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mElement:Landroid/renderscript/Element;

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->init(Landroid/renderscript/RenderScript;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .registers 5
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 41
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 42
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mElement:Landroid/renderscript/Element;

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->init(Landroid/renderscript/RenderScript;II)V

    .line 44
    return-void
.end method

.method private copyToArray(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;I)V
    .registers 5
    .parameter "i"
    .parameter "index"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_15

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 52
    :cond_15
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x4

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 53
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 54
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;Landroid/renderscript/FieldPacker;)V
    .registers 4
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 47
    iget-object v0, p1, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;->programStore:Landroid/renderscript/ProgramStore;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 48
    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 4
    .parameter "rs"

    .prologue
    .line 27
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 28
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "programStore"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 29
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .registers 5

    .prologue
    .line 94
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->copyToArray(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 95
    :cond_11
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    .line 96
    monitor-exit p0

    return-void

    .line 94
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    .registers 3
    .parameter "index"

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 70
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v0, v0, p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_d

    goto :goto_6

    .line 69
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_programStore(I)Landroid/renderscript/ProgramStore;
    .registers 3
    .parameter "index"

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 90
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;->programStore:Landroid/renderscript/ProgramStore;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 89
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .registers 8
    .parameter "newSize"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    if-eqz v3, :cond_1b

    .line 100
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    array-length v2, v3

    .line 101
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_36

    move-result v0

    .line 102
    .local v0, copySize:I
    if-ne p1, v2, :cond_10

    .line 110
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 103
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_10
    :try_start_10
    new-array v1, p1, [Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 104
    .local v1, ni:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 108
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    .end local v2           #oldSize:I
    :cond_1b
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 109
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_e

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_36

    goto :goto_e

    .line 99
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;IZ)V
    .registers 6
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 58
    :cond_11
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aput-object p1, v1, p2

    .line 59
    if-eqz p3, :cond_28

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->copyToArray(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;I)V

    .line 61
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 62
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 63
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 66
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_28
    monitor-exit p0

    return-void

    .line 57
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_programStore(ILandroid/renderscript/ProgramStore;Z)V
    .registers 7
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 75
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 76
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 77
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;->programStore:Landroid/renderscript/ProgramStore;

    .line 78
    if-eqz p3, :cond_58

    .line 79
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 80
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 81
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 82
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 83
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5a

    .line 86
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_58
    monitor-exit p0

    return-void

    .line 74
    :catchall_5a
    move-exception v1

    monitor-exit p0

    throw v1
.end method
