.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-array v2, v2, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 35
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    .line 22
    :array_1e
    .array-data 0x4
        0xcet 0x0t 0x2t 0x7ft
        0xcft 0x0t 0x2t 0x7ft
        0xd1t 0x0t 0x2t 0x7ft
        0xd3t 0x0t 0x2t 0x7ft
        0xd5t 0x0t 0x2t 0x7ft
    .end array-data

    :array_2c
    .array-data 0x4
        0xcet 0x0t 0x2t 0x7ft
        0xd0t 0x0t 0x2t 0x7ft
        0xd2t 0x0t 0x2t 0x7ft
        0xd4t 0x0t 0x2t 0x7ft
        0xd6t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
