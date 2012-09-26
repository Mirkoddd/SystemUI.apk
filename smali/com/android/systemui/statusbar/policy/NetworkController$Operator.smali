.class final enum Lcom/android/systemui/statusbar/policy/NetworkController$Operator;
.super Ljava/lang/Enum;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/policy/NetworkController$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum ATT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum BMC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum CMCC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum CU:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum JPN:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum KT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum LGT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum OPEN:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum ORG:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum RWC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum SKT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum SPR:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum TLS:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum TMO:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum VZW:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->OPEN:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 223
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "ATT"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ATT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 224
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "TMO"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 225
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "VZW"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 226
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "SPR"

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->SPR:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 227
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "BMC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->BMC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 228
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "TLS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->TLS:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 229
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "SKT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->SKT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 230
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "KT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->KT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 231
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "LGT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 232
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "CMCC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->CMCC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 233
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "CU"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->CU:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 234
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "JPN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->JPN:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 235
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "RWC"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->RWC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 236
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "ORG"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ORG:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 221
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->OPEN:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ATT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->SPR:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->BMC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->TLS:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->SKT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->KT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->CMCC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->CU:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->JPN:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->RWC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ORG:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->$VALUES:[Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;
    .registers 3
    .parameter "Str"

    .prologue
    .line 248
    :try_start_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 250
    :goto_4
    return-object v1

    .line 249
    :catch_5
    move-exception v0

    .line 250
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->OPEN:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;
    .registers 2
    .parameter "name"

    .prologue
    .line 221
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/NetworkController$Operator;
    .registers 1

    .prologue
    .line 221
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->$VALUES:[Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    return-object v0
.end method


# virtual methods
.method public isKoreanOperator()Z
    .registers 2

    .prologue
    .line 243
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->SKT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->KT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isNorthAmericanOperator()Z
    .registers 2

    .prologue
    .line 239
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ATT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-eq p0, v0, :cond_10

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-eq p0, v0, :cond_10

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-eq p0, v0, :cond_10

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->SPR:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
