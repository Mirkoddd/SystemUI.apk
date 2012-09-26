.class public Lcom/android/ex/carousel/ScriptField_Card;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_Card.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/carousel/ScriptField_Card$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .registers 4
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 73
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 74
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_Card;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mElement:Landroid/renderscript/Element;

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_Card;->init(Landroid/renderscript/RenderScript;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .registers 5
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 80
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 81
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_Card;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mElement:Landroid/renderscript/Element;

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ex/carousel/ScriptField_Card;->init(Landroid/renderscript/RenderScript;II)V

    .line 83
    return-void
.end method

.method private copyToArray(Lcom/android/ex/carousel/ScriptField_Card$Item;I)V
    .registers 5
    .parameter "i"
    .parameter "index"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_15

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit16 v1, v1, 0xa0

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 110
    :cond_15
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v1, p2, 0xa0

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 111
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/ScriptField_Card;->copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_Card$Item;Landroid/renderscript/FieldPacker;)V

    .line 112
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_Card$Item;Landroid/renderscript/FieldPacker;)V
    .registers 6
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 86
    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 87
    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 88
    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureOffset:Landroid/renderscript/Float2;

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 89
    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailLineOffset:Landroid/renderscript/Float2;

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 90
    const/4 v0, 0x0

    .local v0, ct2:I
    :goto_15
    const/4 v1, 0x2

    if-ge v0, v1, :cond_22

    .line 91
    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexturePosition:[Landroid/renderscript/Float2;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 94
    :cond_22
    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometry:Landroid/renderscript/Mesh;

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 95
    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->matrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 96
    iget v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureState:I

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 97
    iget v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureState:I

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 98
    iget v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryState:I

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 99
    iget v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->cardVisible:I

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 100
    iget v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailVisible:I

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 101
    iget v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->shouldPrefetch:I

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 102
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 103
    iget-wide v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureTimeStamp:J

    invoke-virtual {p2, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 104
    iget-wide v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureTimeStamp:J

    invoke-virtual {p2, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 105
    iget-wide v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryTimeStamp:J

    invoke-virtual {p2, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 106
    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 5
    .parameter "rs"

    .prologue
    .line 50
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 51
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "texture"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 52
    invoke-static {p0}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTexture"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 53
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTextureOffset"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 54
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailLineOffset"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 55
    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTexturePosition"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;

    .line 56
    invoke-static {p0}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "geometry"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 57
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "matrix"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 58
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "textureState"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 59
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTextureState"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 60
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "geometryState"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 61
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "cardVisible"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 62
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailVisible"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 63
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "shouldPrefetch"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 64
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#padding_1"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 65
    invoke-static {p0}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "textureTimeStamp"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 66
    invoke-static {p0}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTextureTimeStamp"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 67
    invoke-static {p0}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "geometryTimeStamp"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .registers 5

    .prologue
    .line 458
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/ex/carousel/ScriptField_Card;->copyToArray(Lcom/android/ex/carousel/ScriptField_Card$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 459
    :cond_11
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    .line 460
    monitor-exit p0

    return-void

    .line 458
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/android/ex/carousel/ScriptField_Card$Item;
    .registers 3
    .parameter "index"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 128
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_d

    goto :goto_6

    .line 127
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_cardVisible(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 428
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 429
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->cardVisible:I
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 428
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailLineOffset(I)Landroid/renderscript/Float2;
    .registers 3
    .parameter "index"

    .prologue
    .line 393
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 394
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailLineOffset:Landroid/renderscript/Float2;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 393
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailTexture(I)Landroid/renderscript/Allocation;
    .registers 3
    .parameter "index"

    .prologue
    .line 383
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 384
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 383
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailTextureOffset(I)Landroid/renderscript/Float2;
    .registers 3
    .parameter "index"

    .prologue
    .line 388
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 389
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureOffset:Landroid/renderscript/Float2;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 388
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailTexturePosition(I)[Landroid/renderscript/Float2;
    .registers 3
    .parameter "index"

    .prologue
    .line 398
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 399
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexturePosition:[Landroid/renderscript/Float2;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 398
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailTextureState(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 418
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 419
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureState:I
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 418
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailTextureTimeStamp(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 448
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    .line 449
    :goto_7
    monitor-exit p0

    return-wide v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureTimeStamp:J
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    goto :goto_7

    .line 448
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailVisible(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 433
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 434
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailVisible:I
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 433
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_geometry(I)Landroid/renderscript/Mesh;
    .registers 3
    .parameter "index"

    .prologue
    .line 403
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 404
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometry:Landroid/renderscript/Mesh;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 403
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_geometryState(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 423
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 424
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryState:I
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 423
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_geometryTimeStamp(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 453
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    .line 454
    :goto_7
    monitor-exit p0

    return-wide v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryTimeStamp:J
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    goto :goto_7

    .line 453
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_matrix(I)Landroid/renderscript/Matrix4f;
    .registers 3
    .parameter "index"

    .prologue
    .line 408
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 409
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->matrix:Landroid/renderscript/Matrix4f;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 408
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_shouldPrefetch(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 438
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 439
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->shouldPrefetch:I
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 438
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_texture(I)Landroid/renderscript/Allocation;
    .registers 3
    .parameter "index"

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 379
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 378
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_textureState(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 413
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 414
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureState:I
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    goto :goto_6

    .line 413
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_textureTimeStamp(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 443
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    .line 444
    :goto_7
    monitor-exit p0

    return-wide v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureTimeStamp:J
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    goto :goto_7

    .line 443
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .registers 8
    .parameter "newSize"

    .prologue
    .line 463
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-eqz v3, :cond_1b

    .line 464
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    array-length v2, v3

    .line 465
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_36

    move-result v0

    .line 466
    .local v0, copySize:I
    if-ne p1, v2, :cond_10

    .line 474
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 467
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_10
    :try_start_10
    new-array v1, p1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 468
    .local v1, ni:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 472
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    .end local v2           #oldSize:I
    :cond_1b
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 473
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_e

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit16 v4, v4, 0xa0

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_36

    goto :goto_e

    .line 463
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/ex/carousel/ScriptField_Card$Item;IZ)V
    .registers 6
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 116
    :cond_11
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aput-object p1, v1, p2

    .line 117
    if-eqz p3, :cond_29

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_Card;->copyToArray(Lcom/android/ex/carousel/ScriptField_Card$Item;I)V

    .line 119
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 120
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/ScriptField_Card;->copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_Card$Item;Landroid/renderscript/FieldPacker;)V

    .line 121
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 124
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_29
    monitor-exit p0

    return-void

    .line 115
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_cardVisible(IIZ)V
    .registers 7
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 288
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 289
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 290
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 291
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->cardVisible:I

    .line 292
    if-eqz p3, :cond_5b

    .line 293
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x78

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 294
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 295
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 296
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 297
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 300
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5b
    monitor-exit p0

    return-void

    .line 288
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_detailLineOffset(ILandroid/renderscript/Float2;Z)V
    .registers 7
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 178
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 179
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 180
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailLineOffset:Landroid/renderscript/Float2;

    .line 181
    if-eqz p3, :cond_5b

    .line 182
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 183
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 184
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 185
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 186
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 189
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5b
    monitor-exit p0

    return-void

    .line 177
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_detailTexture(ILandroid/renderscript/Allocation;Z)V
    .registers 7
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 148
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 149
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 150
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    .line 151
    if-eqz p3, :cond_5a

    .line 152
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 153
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 154
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 155
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 156
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    .line 159
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5a
    monitor-exit p0

    return-void

    .line 147
    :catchall_5c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_detailTextureOffset(ILandroid/renderscript/Float2;Z)V
    .registers 7
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 163
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 164
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 165
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureOffset:Landroid/renderscript/Float2;

    .line 166
    if-eqz p3, :cond_5b

    .line 167
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 168
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 169
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 170
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 171
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 174
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5b
    monitor-exit p0

    return-void

    .line 162
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_detailTexturePosition(I[Landroid/renderscript/Float2;Z)V
    .registers 9
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    const/4 v4, 0x2

    .line 192
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v2, :cond_17

    new-instance v2, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/lit16 v3, v3, 0xa0

    invoke-direct {v2, v3}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 193
    :cond_17
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v2, :cond_27

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    new-array v2, v2, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 194
    :cond_27
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v2, v2, p1

    if-nez v2, :cond_36

    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v3, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v3}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v3, v2, p1

    .line 195
    :cond_36
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v2, v2, p1

    iput-object p2, v2, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexturePosition:[Landroid/renderscript/Float2;

    .line 196
    if-eqz p3, :cond_6c

    .line 197
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v3, p1, 0xa0

    add-int/lit8 v3, v3, 0x18

    invoke-virtual {v2, v3}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 198
    const/4 v0, 0x0

    .local v0, ct1:I
    :goto_48
    if-ge v0, v4, :cond_54

    .line 199
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 202
    :cond_54
    new-instance v1, Landroid/renderscript/FieldPacker;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 203
    .local v1, fp:Landroid/renderscript/FieldPacker;
    const/4 v0, 0x0

    :goto_5c
    if-ge v0, v4, :cond_66

    .line 204
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 207
    :cond_66
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3, v1}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_6c
    .catchall {:try_start_2 .. :try_end_6c} :catchall_6e

    .line 210
    .end local v0           #ct1:I
    .end local v1           #fp:Landroid/renderscript/FieldPacker;
    :cond_6c
    monitor-exit p0

    return-void

    .line 192
    :catchall_6e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized set_detailTextureState(IIZ)V
    .registers 7
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 258
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 259
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 260
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 261
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureState:I

    .line 262
    if-eqz p3, :cond_5b

    .line 263
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x70

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 264
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 265
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 266
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 267
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x8

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 270
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5b
    monitor-exit p0

    return-void

    .line 258
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_detailTextureTimeStamp(IJZ)V
    .registers 8
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 348
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 349
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 350
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 351
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-wide p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureTimeStamp:J

    .line 352
    if-eqz p4, :cond_5c

    .line 353
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit16 v2, v2, 0x90

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 354
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 355
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 356
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 357
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xf

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 360
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5c
    monitor-exit p0

    return-void

    .line 348
    :catchall_5e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_detailVisible(IIZ)V
    .registers 7
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 303
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 304
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 305
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 306
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailVisible:I

    .line 307
    if-eqz p3, :cond_5b

    .line 308
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x7c

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 309
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 310
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 311
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 312
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 315
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5b
    monitor-exit p0

    return-void

    .line 303
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_geometry(ILandroid/renderscript/Mesh;Z)V
    .registers 7
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 214
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 215
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 216
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometry:Landroid/renderscript/Mesh;

    .line 217
    if-eqz p3, :cond_5a

    .line 218
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 219
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 220
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 221
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 222
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    .line 225
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5a
    monitor-exit p0

    return-void

    .line 213
    :catchall_5c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_geometryState(IIZ)V
    .registers 7
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 273
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 274
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 275
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 276
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryState:I

    .line 277
    if-eqz p3, :cond_5b

    .line 278
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x74

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 279
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 280
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 281
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 282
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x9

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 285
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5b
    monitor-exit p0

    return-void

    .line 273
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_geometryTimeStamp(IJZ)V
    .registers 8
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 363
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 364
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 365
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 366
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-wide p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryTimeStamp:J

    .line 367
    if-eqz p4, :cond_5c

    .line 368
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit16 v2, v2, 0x98

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 369
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 370
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 371
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 372
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 375
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5c
    monitor-exit p0

    return-void

    .line 363
    :catchall_5e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_matrix(ILandroid/renderscript/Matrix4f;Z)V
    .registers 7
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 228
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 229
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 230
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 231
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->matrix:Landroid/renderscript/Matrix4f;

    .line 232
    if-eqz p3, :cond_5b

    .line 233
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x2c

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 234
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 235
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 236
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 237
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 240
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5b
    monitor-exit p0

    return-void

    .line 228
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_shouldPrefetch(IIZ)V
    .registers 7
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 318
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 319
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 320
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 321
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->shouldPrefetch:I

    .line 322
    if-eqz p3, :cond_5b

    .line 323
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 324
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 325
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 326
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 327
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xc

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    .line 330
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5b
    monitor-exit p0

    return-void

    .line 318
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_texture(ILandroid/renderscript/Allocation;Z)V
    .registers 7
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 133
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 134
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 135
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    .line 136
    if-eqz p3, :cond_58

    .line 137
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 138
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 139
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 140
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 141
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5a

    .line 144
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_58
    monitor-exit p0

    return-void

    .line 132
    :catchall_5a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_textureState(IIZ)V
    .registers 7
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 243
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 244
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 245
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 246
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureState:I

    .line 247
    if-eqz p3, :cond_5a

    .line 248
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 249
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 250
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 251
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 252
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    .line 255
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5a
    monitor-exit p0

    return-void

    .line 243
    :catchall_5c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_textureTimeStamp(IJZ)V
    .registers 8
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 333
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_16

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 334
    :cond_16
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    .line 335
    :cond_26
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    .line 336
    :cond_35
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-wide p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureTimeStamp:J

    .line 337
    if-eqz p4, :cond_5c

    .line 338
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit16 v2, v2, 0x88

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 339
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 340
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 341
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 342
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xe

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 345
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_5c
    monitor-exit p0

    return-void

    .line 333
    :catchall_5e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
