.class public Lcom/android/ex/carousel/ScriptC_carousel;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_carousel.java"


# static fields
.field private static final mExportFuncIdx_createCards:I = 0x1

.field private static final mExportFuncIdx_doLongPress:I = 0xd

.field private static final mExportFuncIdx_doMotion:I = 0xe

.field private static final mExportFuncIdx_doStart:I = 0xb

.field private static final mExportFuncIdx_doStop:I = 0xc

.field private static final mExportFuncIdx_invalidateDetailTexture:I = 0x6

.field private static final mExportFuncIdx_invalidateTexture:I = 0x5

.field private static final mExportFuncIdx_lookAt:I = 0x2

.field private static final mExportFuncIdx_setCarouselRotationAngle:I = 0xa

.field private static final mExportFuncIdx_setCarouselRotationAngle2:I = 0xf

.field private static final mExportFuncIdx_setDetailTexture:I = 0x4

.field private static final mExportFuncIdx_setGeometry:I = 0x7

.field private static final mExportFuncIdx_setMatrix:I = 0x8

.field private static final mExportFuncIdx_setProgramStoresCard:I = 0x9

.field private static final mExportFuncIdx_setRadius:I = 0x0

.field private static final mExportFuncIdx_setTexture:I = 0x3

.field private static final mExportVarIdx_backgroundColor:I = 0x1b

.field private static final mExportVarIdx_backgroundTexture:I = 0x2d

.field private static final mExportVarIdx_cardCount:I = 0xa

.field private static final mExportVarIdx_cardCreationFadeDuration:I = 0x18

.field private static final mExportVarIdx_cardRotation:I = 0x12

.field private static final mExportVarIdx_cards:I = 0x7

.field private static final mExportVarIdx_cardsFaceTangent:I = 0x13

.field private static final mExportVarIdx_debugCamera:I = 0x0

.field private static final mExportVarIdx_debugDetails:I = 0x4

.field private static final mExportVarIdx_debugGeometryLoading:I = 0x3

.field private static final mExportVarIdx_debugRays:I = 0x6

.field private static final mExportVarIdx_debugRendering:I = 0x5

.field private static final mExportVarIdx_debugSelection:I = 0x1

.field private static final mExportVarIdx_debugTextureLoading:I = 0x2

.field private static final mExportVarIdx_defaultCardMatrix:I = 0x32

.field private static final mExportVarIdx_defaultGeometry:I = 0x30

.field private static final mExportVarIdx_defaultTexture:I = 0x2b

.field private static final mExportVarIdx_detailFadeRate:I = 0x1a

.field private static final mExportVarIdx_detailLineTexture:I = 0x2e

.field private static final mExportVarIdx_detailLoadingTexture:I = 0x2f

.field private static final mExportVarIdx_detailTextureAlignment:I = 0xf

.field private static final mExportVarIdx_dragFactor:I = 0x16

.field private static final mExportVarIdx_dragModel:I = 0x20

.field private static final mExportVarIdx_drawRuler:I = 0x10

.field private static final mExportVarIdx_fadeInDuration:I = 0x17

.field private static final mExportVarIdx_fillDirection:I = 0x21

.field private static final mExportVarIdx_firstCardTop:I = 0x1e

.field private static final mExportVarIdx_frictionCoeff:I = 0x15

.field private static final mExportVarIdx_linearClamp:I = 0x36

.field private static final mExportVarIdx_loadingGeometry:I = 0x31

.field private static final mExportVarIdx_loadingTexture:I = 0x2c

.field private static final mExportVarIdx_modelviewMatrix:I = 0x34

.field private static final mExportVarIdx_multiTextureBlendingFragmentProgram:I = 0x28

.field private static final mExportVarIdx_multiTextureFragmentProgram:I = 0x27

.field private static final mExportVarIdx_overscrollSlots:I = 0x1f

.field private static final mExportVarIdx_prefetchCardCount:I = 0xe

.field private static final mExportVarIdx_programStoreBackground:I = 0x23

.field private static final mExportVarIdx_programStoreDetail:I = 0x24

.field private static final mExportVarIdx_programStoresCard:I = 0x22

.field private static final mExportVarIdx_programStoresCardCount:I = 0xb

.field private static final mExportVarIdx_projectionMatrix:I = 0x33

.field private static final mExportVarIdx_radius:I = 0x11

.field private static final mExportVarIdx_rasterProgram:I = 0x2a

.field private static final mExportVarIdx_rezInCardCount:I = 0x19

.field private static final mExportVarIdx_rowCount:I = 0x1c

.field private static final mExportVarIdx_rowSpacing:I = 0x1d

.field private static final mExportVarIdx_shaderConstants:I = 0x35

.field private static final mExportVarIdx_singleTextureBlendingFragmentProgram:I = 0x26

.field private static final mExportVarIdx_singleTextureFragmentProgram:I = 0x25

.field private static final mExportVarIdx_slotCount:I = 0x9

.field private static final mExportVarIdx_startAngle:I = 0x8

.field private static final mExportVarIdx_swaySensitivity:I = 0x14

.field private static final mExportVarIdx_vertexProgram:I = 0x29

.field private static final mExportVarIdx_visibleDetailCount:I = 0xd

.field private static final mExportVarIdx_visibleSlotCount:I = 0xc


# instance fields
.field private mExportVar_backgroundColor:Landroid/renderscript/Float4;

.field private mExportVar_backgroundTexture:Landroid/renderscript/Allocation;

.field private mExportVar_cardCount:I

.field private mExportVar_cardCreationFadeDuration:I

.field private mExportVar_cardRotation:F

.field private mExportVar_cards:Lcom/android/ex/carousel/ScriptField_Card;

.field private mExportVar_cardsFaceTangent:Z

.field private mExportVar_debugCamera:Z

.field private mExportVar_debugDetails:Z

.field private mExportVar_debugGeometryLoading:Z

.field private mExportVar_debugRays:Z

.field private mExportVar_debugRendering:Z

.field private mExportVar_debugSelection:Z

.field private mExportVar_debugTextureLoading:Z

.field private mExportVar_defaultCardMatrix:Landroid/renderscript/Matrix4f;

.field private mExportVar_defaultGeometry:Landroid/renderscript/Mesh;

.field private mExportVar_defaultTexture:Landroid/renderscript/Allocation;

.field private mExportVar_detailFadeRate:F

.field private mExportVar_detailLineTexture:Landroid/renderscript/Allocation;

.field private mExportVar_detailLoadingTexture:Landroid/renderscript/Allocation;

.field private mExportVar_detailTextureAlignment:I

.field private mExportVar_dragFactor:F

.field private mExportVar_dragModel:I

.field private mExportVar_drawRuler:Z

.field private mExportVar_fadeInDuration:I

.field private mExportVar_fillDirection:I

.field private mExportVar_firstCardTop:Z

.field private mExportVar_frictionCoeff:F

.field private mExportVar_linearClamp:Landroid/renderscript/Sampler;

.field private mExportVar_loadingGeometry:Landroid/renderscript/Mesh;

.field private mExportVar_loadingTexture:Landroid/renderscript/Allocation;

.field private mExportVar_modelviewMatrix:Landroid/renderscript/Matrix4f;

.field private mExportVar_multiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mExportVar_multiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mExportVar_overscrollSlots:F

.field private mExportVar_prefetchCardCount:I

.field private mExportVar_programStoreBackground:Landroid/renderscript/ProgramStore;

.field private mExportVar_programStoreDetail:Landroid/renderscript/ProgramStore;

.field private mExportVar_programStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

.field private mExportVar_programStoresCardCount:I

.field private mExportVar_projectionMatrix:Landroid/renderscript/Matrix4f;

.field private mExportVar_radius:F

.field private mExportVar_rasterProgram:Landroid/renderscript/ProgramRaster;

.field private mExportVar_rezInCardCount:F

.field private mExportVar_rowCount:I

.field private mExportVar_rowSpacing:F

.field private mExportVar_shaderConstants:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

.field private mExportVar_singleTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mExportVar_singleTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

.field private mExportVar_slotCount:I

.field private mExportVar_startAngle:F

.field private mExportVar_swaySensitivity:F

.field private mExportVar_vertexProgram:Landroid/renderscript/ProgramVertex;

.field private mExportVar_visibleDetailCount:I

.field private mExportVar_visibleSlotCount:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 5
    .parameter "rs"
    .parameter "resources"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 17
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugCamera:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugSelection:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugTextureLoading:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugGeometryLoading:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugDetails:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugRendering:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugRays:Z

    .line 24
    iput v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_dragModel:I

    .line 25
    return-void
.end method


# virtual methods
.method public bind_cards(Lcom/android/ex/carousel/ScriptField_Card;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x7

    .line 72
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cards:Lcom/android/ex/carousel/ScriptField_Card;

    .line 73
    if-nez p1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 75
    :goto_9
    return-void

    .line 74
    :cond_a
    invoke-virtual {p1}, Lcom/android/ex/carousel/ScriptField_Card;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_9
.end method

.method public bind_programStoresCard(Lcom/android/ex/carousel/ScriptField_ProgramStore_s;)V
    .registers 4
    .parameter "v"

    .prologue
    const/16 v1, 0x22

    .line 372
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    .line 373
    if-nez p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 375
    :goto_a
    return-void

    .line 374
    :cond_b
    invoke-virtual {p1}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_a
.end method

.method public bind_shaderConstants(Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;)V
    .registers 4
    .parameter "v"

    .prologue
    const/16 v1, 0x35

    .line 588
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_shaderConstants:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    .line 589
    if-nez p1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    .line 591
    :goto_a
    return-void

    .line 590
    :cond_b
    invoke-virtual {p1}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/ScriptC_carousel;->bindAllocation(Landroid/renderscript/Allocation;I)V

    goto :goto_a
.end method

.method public get_backgroundColor()Landroid/renderscript/Float4;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_backgroundColor:Landroid/renderscript/Float4;

    return-object v0
.end method

.method public get_backgroundTexture()Landroid/renderscript/Allocation;
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_backgroundTexture:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_cardCount()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardCount:I

    return v0
.end method

.method public get_cardCreationFadeDuration()I
    .registers 2

    .prologue
    .line 265
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardCreationFadeDuration:I

    return v0
.end method

.method public get_cardRotation()F
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardRotation:F

    return v0
.end method

.method public get_cards()Lcom/android/ex/carousel/ScriptField_Card;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cards:Lcom/android/ex/carousel/ScriptField_Card;

    return-object v0
.end method

.method public get_cardsFaceTangent()Z
    .registers 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardsFaceTangent:Z

    return v0
.end method

.method public get_debugCamera()Z
    .registers 2

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugCamera:Z

    return v0
.end method

.method public get_debugDetails()Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugDetails:Z

    return v0
.end method

.method public get_debugGeometryLoading()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugGeometryLoading:Z

    return v0
.end method

.method public get_debugRays()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugRays:Z

    return v0
.end method

.method public get_debugRendering()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugRendering:Z

    return v0
.end method

.method public get_debugSelection()Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugSelection:Z

    return v0
.end method

.method public get_debugTextureLoading()Z
    .registers 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_debugTextureLoading:Z

    return v0
.end method

.method public get_defaultCardMatrix()Landroid/renderscript/Matrix4f;
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultCardMatrix:Landroid/renderscript/Matrix4f;

    return-object v0
.end method

.method public get_defaultGeometry()Landroid/renderscript/Mesh;
    .registers 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultGeometry:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_defaultTexture()Landroid/renderscript/Allocation;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultTexture:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_detailFadeRate()F
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailFadeRate:F

    return v0
.end method

.method public get_detailLineTexture()Landroid/renderscript/Allocation;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailLineTexture:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_detailLoadingTexture()Landroid/renderscript/Allocation;
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailLoadingTexture:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_detailTextureAlignment()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailTextureAlignment:I

    return v0
.end method

.method public get_dragFactor()F
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_dragFactor:F

    return v0
.end method

.method public get_dragModel()I
    .registers 2

    .prologue
    .line 355
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_dragModel:I

    return v0
.end method

.method public get_drawRuler()Z
    .registers 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_drawRuler:Z

    return v0
.end method

.method public get_fadeInDuration()I
    .registers 2

    .prologue
    .line 254
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_fadeInDuration:I

    return v0
.end method

.method public get_fillDirection()I
    .registers 2

    .prologue
    .line 366
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_fillDirection:I

    return v0
.end method

.method public get_firstCardTop()Z
    .registers 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_firstCardTop:Z

    return v0
.end method

.method public get_frictionCoeff()F
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_frictionCoeff:F

    return v0
.end method

.method public get_linearClamp()Landroid/renderscript/Sampler;
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_linearClamp:Landroid/renderscript/Sampler;

    return-object v0
.end method

.method public get_loadingGeometry()Landroid/renderscript/Mesh;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_loadingGeometry:Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public get_loadingTexture()Landroid/renderscript/Allocation;
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_loadingTexture:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_modelviewMatrix()Landroid/renderscript/Matrix4f;
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_modelviewMatrix:Landroid/renderscript/Matrix4f;

    return-object v0
.end method

.method public get_multiTextureBlendingFragmentProgram()Landroid/renderscript/ProgramFragment;
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_multiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_multiTextureFragmentProgram()Landroid/renderscript/ProgramFragment;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_multiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_overscrollSlots()F
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_overscrollSlots:F

    return v0
.end method

.method public get_prefetchCardCount()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_prefetchCardCount:I

    return v0
.end method

.method public get_programStoreBackground()Landroid/renderscript/ProgramStore;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoreBackground:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_programStoreDetail()Landroid/renderscript/ProgramStore;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoreDetail:Landroid/renderscript/ProgramStore;

    return-object v0
.end method

.method public get_programStoresCard()Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoresCard:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    return-object v0
.end method

.method public get_programStoresCardCount()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoresCardCount:I

    return v0
.end method

.method public get_projectionMatrix()Landroid/renderscript/Matrix4f;
    .registers 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_projectionMatrix:Landroid/renderscript/Matrix4f;

    return-object v0
.end method

.method public get_radius()F
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_radius:F

    return v0
.end method

.method public get_rasterProgram()Landroid/renderscript/ProgramRaster;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rasterProgram:Landroid/renderscript/ProgramRaster;

    return-object v0
.end method

.method public get_rezInCardCount()F
    .registers 2

    .prologue
    .line 276
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rezInCardCount:F

    return v0
.end method

.method public get_rowCount()I
    .registers 2

    .prologue
    .line 311
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rowCount:I

    return v0
.end method

.method public get_rowSpacing()F
    .registers 2

    .prologue
    .line 322
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rowSpacing:F

    return v0
.end method

.method public get_shaderConstants()Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_shaderConstants:Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;

    return-object v0
.end method

.method public get_singleTextureBlendingFragmentProgram()Landroid/renderscript/ProgramFragment;
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_singleTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_singleTextureFragmentProgram()Landroid/renderscript/ProgramFragment;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_singleTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    return-object v0
.end method

.method public get_slotCount()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_slotCount:I

    return v0
.end method

.method public get_startAngle()F
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_startAngle:F

    return v0
.end method

.method public get_swaySensitivity()F
    .registers 2

    .prologue
    .line 221
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_swaySensitivity:F

    return v0
.end method

.method public get_vertexProgram()Landroid/renderscript/ProgramVertex;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_vertexProgram:Landroid/renderscript/ProgramVertex;

    return-object v0
.end method

.method public get_visibleDetailCount()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_visibleDetailCount:I

    return v0
.end method

.method public get_visibleSlotCount()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_visibleSlotCount:I

    return v0
.end method

.method public invoke_createCards(II)V
    .registers 5
    .parameter "start"
    .parameter "total"

    .prologue
    .line 617
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 618
    .local v0, createCards_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 619
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 620
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 621
    return-void
.end method

.method public invoke_doLongPress()V
    .registers 2

    .prologue
    .line 727
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(I)V

    .line 728
    return-void
.end method

.method public invoke_doMotion(FFJ)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 732
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 733
    .local v0, doMotion_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 734
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 735
    invoke-virtual {v0, p3, p4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 736
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 737
    return-void
.end method

.method public invoke_doStart(FFJ)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 709
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 710
    .local v0, doStart_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 711
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 712
    invoke-virtual {v0, p3, p4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 713
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 714
    return-void
.end method

.method public invoke_doStop(FFJ)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 718
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 719
    .local v0, doStop_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 720
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 721
    invoke-virtual {v0, p3, p4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 722
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 723
    return-void
.end method

.method public invoke_invalidateDetailTexture(IZ)V
    .registers 5
    .parameter "n"
    .parameter "eraseCurrent"

    .prologue
    .line 669
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 670
    .local v0, invalidateDetailTexture_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 671
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 672
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 673
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 674
    return-void
.end method

.method public invoke_invalidateTexture(IZ)V
    .registers 5
    .parameter "n"
    .parameter "eraseCurrent"

    .prologue
    .line 660
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 661
    .local v0, invalidateTexture_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 662
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 663
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 664
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 665
    return-void
.end method

.method public invoke_lookAt(FFFFFFFFF)V
    .registers 12
    .parameter "fromX"
    .parameter "fromY"
    .parameter "fromZ"
    .parameter "atX"
    .parameter "atY"
    .parameter "atZ"
    .parameter "upX"
    .parameter "upY"
    .parameter "upZ"

    .prologue
    .line 625
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 626
    .local v0, lookAt_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 627
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 628
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 629
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 630
    invoke-virtual {v0, p5}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 631
    invoke-virtual {v0, p6}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 632
    invoke-virtual {v0, p7}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 633
    invoke-virtual {v0, p8}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 634
    invoke-virtual {v0, p9}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 635
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 636
    return-void
.end method

.method public invoke_setCarouselRotationAngle(F)V
    .registers 4
    .parameter "carouselRotationAngle"

    .prologue
    .line 702
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 703
    .local v0, setCarouselRotationAngle_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 704
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 705
    return-void
.end method

.method public invoke_setCarouselRotationAngle2(FIIF)V
    .registers 7
    .parameter "endAngle"
    .parameter "milliseconds"
    .parameter "interpolationMode"
    .parameter "maxAnimatedArc"

    .prologue
    .line 741
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 742
    .local v0, setCarouselRotationAngle2_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 743
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 744
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 745
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 746
    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 747
    return-void
.end method

.method public invoke_setDetailTexture(IFFFFLandroid/renderscript/Allocation;)V
    .registers 9
    .parameter "n"
    .parameter "offx"
    .parameter "offy"
    .parameter "loffx"
    .parameter "loffy"
    .parameter "texture"

    .prologue
    .line 648
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 649
    .local v0, setDetailTexture_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 650
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 651
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 652
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 653
    invoke-virtual {v0, p5}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 654
    invoke-virtual {v0, p6}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 655
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 656
    return-void
.end method

.method public invoke_setGeometry(ILandroid/renderscript/Mesh;)V
    .registers 5
    .parameter "n"
    .parameter "geometry"

    .prologue
    .line 678
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 679
    .local v0, setGeometry_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 680
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 681
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 682
    return-void
.end method

.method public invoke_setMatrix(ILandroid/renderscript/Matrix4f;)V
    .registers 5
    .parameter "n"
    .parameter "matrix"

    .prologue
    .line 686
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x44

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 687
    .local v0, setMatrix_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 688
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 689
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 690
    return-void
.end method

.method public invoke_setProgramStoresCard(ILandroid/renderscript/ProgramStore;)V
    .registers 5
    .parameter "n"
    .parameter "programStore"

    .prologue
    .line 694
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 695
    .local v0, setProgramStoresCard_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 696
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 697
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 698
    return-void
.end method

.method public invoke_setRadius(F)V
    .registers 4
    .parameter "rad"

    .prologue
    .line 610
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 611
    .local v0, setRadius_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 612
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 613
    return-void
.end method

.method public invoke_setTexture(ILandroid/renderscript/Allocation;)V
    .registers 5
    .parameter "n"
    .parameter "texture"

    .prologue
    .line 640
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 641
    .local v0, setTexture_fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 642
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 643
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 644
    return-void
.end method

.method public set_backgroundColor(Landroid/renderscript/Float4;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_backgroundColor:Landroid/renderscript/Float4;

    .line 294
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 295
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 296
    const/16 v1, 0x1b

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 297
    return-void
.end method

.method public set_backgroundTexture(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_backgroundTexture:Landroid/renderscript/Allocation;

    .line 495
    const/16 v0, 0x2d

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 496
    return-void
.end method

.method public set_cardCount(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardCount:I

    .line 107
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 108
    return-void
.end method

.method public set_cardCreationFadeDuration(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 260
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardCreationFadeDuration:I

    .line 261
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 262
    return-void
.end method

.method public set_cardRotation(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 194
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardRotation:F

    .line 195
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 196
    return-void
.end method

.method public set_cardsFaceTangent(Z)V
    .registers 3
    .parameter "v"

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_cardsFaceTangent:Z

    .line 206
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IZ)V

    .line 207
    return-void
.end method

.method public set_defaultCardMatrix(Landroid/renderscript/Matrix4f;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultCardMatrix:Landroid/renderscript/Matrix4f;

    .line 550
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 551
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 552
    const/16 v1, 0x32

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 553
    return-void
.end method

.method public set_defaultGeometry(Landroid/renderscript/Mesh;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultGeometry:Landroid/renderscript/Mesh;

    .line 528
    const/16 v0, 0x30

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 529
    return-void
.end method

.method public set_defaultTexture(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_defaultTexture:Landroid/renderscript/Allocation;

    .line 473
    const/16 v0, 0x2b

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 474
    return-void
.end method

.method public set_detailFadeRate(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 282
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailFadeRate:F

    .line 283
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 284
    return-void
.end method

.method public set_detailLineTexture(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailLineTexture:Landroid/renderscript/Allocation;

    .line 506
    const/16 v0, 0x2e

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 507
    return-void
.end method

.method public set_detailLoadingTexture(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailLoadingTexture:Landroid/renderscript/Allocation;

    .line 517
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 518
    return-void
.end method

.method public set_detailTextureAlignment(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 161
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_detailTextureAlignment:I

    .line 162
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 163
    return-void
.end method

.method public set_dragFactor(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 238
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_dragFactor:F

    .line 239
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 240
    return-void
.end method

.method public set_dragModel(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 350
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_dragModel:I

    .line 351
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 352
    return-void
.end method

.method public set_drawRuler(Z)V
    .registers 3
    .parameter "v"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_drawRuler:Z

    .line 173
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IZ)V

    .line 174
    return-void
.end method

.method public set_fadeInDuration(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 249
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_fadeInDuration:I

    .line 250
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 251
    return-void
.end method

.method public set_fillDirection(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 361
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_fillDirection:I

    .line 362
    const/16 v0, 0x21

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 363
    return-void
.end method

.method public set_firstCardTop(Z)V
    .registers 3
    .parameter "v"

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_firstCardTop:Z

    .line 329
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IZ)V

    .line 330
    return-void
.end method

.method public set_frictionCoeff(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 227
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_frictionCoeff:F

    .line 228
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 229
    return-void
.end method

.method public set_linearClamp(Landroid/renderscript/Sampler;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_linearClamp:Landroid/renderscript/Sampler;

    .line 601
    const/16 v0, 0x36

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 602
    return-void
.end method

.method public set_loadingGeometry(Landroid/renderscript/Mesh;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_loadingGeometry:Landroid/renderscript/Mesh;

    .line 539
    const/16 v0, 0x31

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 540
    return-void
.end method

.method public set_loadingTexture(Landroid/renderscript/Allocation;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_loadingTexture:Landroid/renderscript/Allocation;

    .line 484
    const/16 v0, 0x2c

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 485
    return-void
.end method

.method public set_modelviewMatrix(Landroid/renderscript/Matrix4f;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_modelviewMatrix:Landroid/renderscript/Matrix4f;

    .line 576
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 577
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 578
    const/16 v1, 0x34

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 579
    return-void
.end method

.method public set_multiTextureBlendingFragmentProgram(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_multiTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    .line 440
    const/16 v0, 0x28

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 441
    return-void
.end method

.method public set_multiTextureFragmentProgram(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_multiTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    .line 429
    const/16 v0, 0x27

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 430
    return-void
.end method

.method public set_overscrollSlots(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 339
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_overscrollSlots:F

    .line 340
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 341
    return-void
.end method

.method public set_prefetchCardCount(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 150
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_prefetchCardCount:I

    .line 151
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 152
    return-void
.end method

.method public set_programStoreBackground(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoreBackground:Landroid/renderscript/ProgramStore;

    .line 385
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 386
    return-void
.end method

.method public set_programStoreDetail(Landroid/renderscript/ProgramStore;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoreDetail:Landroid/renderscript/ProgramStore;

    .line 396
    const/16 v0, 0x24

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 397
    return-void
.end method

.method public set_programStoresCardCount(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_programStoresCardCount:I

    .line 118
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 119
    return-void
.end method

.method public set_projectionMatrix(Landroid/renderscript/Matrix4f;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_projectionMatrix:Landroid/renderscript/Matrix4f;

    .line 563
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 564
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 565
    const/16 v1, 0x33

    invoke-virtual {p0, v1, v0}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 566
    return-void
.end method

.method public set_radius(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 183
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_radius:F

    .line 184
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 185
    return-void
.end method

.method public set_rasterProgram(Landroid/renderscript/ProgramRaster;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rasterProgram:Landroid/renderscript/ProgramRaster;

    .line 462
    const/16 v0, 0x2a

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 463
    return-void
.end method

.method public set_rezInCardCount(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 271
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rezInCardCount:F

    .line 272
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 273
    return-void
.end method

.method public set_rowCount(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 306
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rowCount:I

    .line 307
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 308
    return-void
.end method

.method public set_rowSpacing(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 317
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_rowSpacing:F

    .line 318
    const/16 v0, 0x1d

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 319
    return-void
.end method

.method public set_singleTextureBlendingFragmentProgram(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_singleTextureBlendingFragmentProgram:Landroid/renderscript/ProgramFragment;

    .line 418
    const/16 v0, 0x26

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 419
    return-void
.end method

.method public set_singleTextureFragmentProgram(Landroid/renderscript/ProgramFragment;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_singleTextureFragmentProgram:Landroid/renderscript/ProgramFragment;

    .line 407
    const/16 v0, 0x25

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 408
    return-void
.end method

.method public set_slotCount(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_slotCount:I

    .line 96
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 97
    return-void
.end method

.method public set_startAngle(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_startAngle:F

    .line 85
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 86
    return-void
.end method

.method public set_swaySensitivity(F)V
    .registers 3
    .parameter "v"

    .prologue
    .line 216
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_swaySensitivity:F

    .line 217
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(IF)V

    .line 218
    return-void
.end method

.method public set_vertexProgram(Landroid/renderscript/ProgramVertex;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_vertexProgram:Landroid/renderscript/ProgramVertex;

    .line 451
    const/16 v0, 0x29

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 452
    return-void
.end method

.method public set_visibleDetailCount(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_visibleDetailCount:I

    .line 140
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 141
    return-void
.end method

.method public set_visibleSlotCount(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/ex/carousel/ScriptC_carousel;->mExportVar_visibleSlotCount:I

    .line 129
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/ex/carousel/ScriptC_carousel;->setVar(II)V

    .line 130
    return-void
.end method
