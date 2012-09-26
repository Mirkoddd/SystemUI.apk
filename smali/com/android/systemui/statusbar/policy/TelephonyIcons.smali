.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_3G_LGT:[[I

.field static final DATA_3G_PLUS:[[I

.field static final DATA_4G:[[I

.field static final DATA_4G_ATT:[[I

.field static final DATA_4G_LGT:[[I

.field static final DATA_4G_LTE:[[I

.field static final DATA_4G_LTE_PLUS:[[I

.field static final DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_H_PLUS:[[I

.field static final DATA_LTE:[[I

.field static final DATA_LTE_ATT:[[I

.field static final DATA_SIGNAL_STRENGTH:[[I

.field static final DATA_T:[[I

.field static final TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 25
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_19c

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1aa

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 38
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1b8

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1c6

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 52
    new-array v0, v6, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1d4

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1e4

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    .line 67
    new-array v0, v6, [[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_1f4

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_206

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    .line 85
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    .line 88
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    .line 90
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    .line 96
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_218

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_224

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    .line 107
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_230

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_23c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    .line 118
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_248

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_254

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    .line 130
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_260

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_26c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    .line 141
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_278

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_284

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    .line 152
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_290

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_29c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    .line 165
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2a8

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2b4

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    .line 177
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2c0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2cc

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    .line 188
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2d8

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2e4

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    .line 200
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2f0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2fc

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    .line 211
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_308

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_314

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_PLUS:[[I

    .line 224
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_320

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_32c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_ATT:[[I

    .line 235
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_338

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_344

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_ATT:[[I

    .line 248
    new-array v0, v6, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_350

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_35c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_T:[[I

    .line 260
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_368

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_374

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_380

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_38c

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_LGT:[[I

    .line 279
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_398

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3a4

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_3b0

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3bc

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LGT:[[I

    return-void

    .line 25
    :array_19c
    .array-data 0x4
        0xb8t 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1aa
    .array-data 0x4
        0xb9t 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
        0xc1t 0x0t 0x2t 0x7ft
    .end array-data

    .line 38
    :array_1b8
    .array-data 0x4
        0xb8t 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1c6
    .array-data 0x4
        0xb9t 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
        0xc1t 0x0t 0x2t 0x7ft
    .end array-data

    .line 52
    :array_1d4
    .array-data 0x4
        0x80t 0x1t 0x2t 0x7ft
        0x82t 0x1t 0x2t 0x7ft
        0x84t 0x1t 0x2t 0x7ft
        0x86t 0x1t 0x2t 0x7ft
        0x88t 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
    .end array-data

    :array_1e4
    .array-data 0x4
        0x81t 0x1t 0x2t 0x7ft
        0x83t 0x1t 0x2t 0x7ft
        0x85t 0x1t 0x2t 0x7ft
        0x87t 0x1t 0x2t 0x7ft
        0x89t 0x1t 0x2t 0x7ft
        0x8bt 0x1t 0x2t 0x7ft
    .end array-data

    .line 67
    :array_1f4
    .array-data 0x4
        0x8ct 0x1t 0x2t 0x7ft
        0x8et 0x1t 0x2t 0x7ft
        0x90t 0x1t 0x2t 0x7ft
        0x92t 0x1t 0x2t 0x7ft
        0x94t 0x1t 0x2t 0x7ft
        0x96t 0x1t 0x2t 0x7ft
        0x98t 0x1t 0x2t 0x7ft
    .end array-data

    :array_206
    .array-data 0x4
        0x8dt 0x1t 0x2t 0x7ft
        0x8ft 0x1t 0x2t 0x7ft
        0x91t 0x1t 0x2t 0x7ft
        0x93t 0x1t 0x2t 0x7ft
        0x95t 0x1t 0x2t 0x7ft
        0x97t 0x1t 0x2t 0x7ft
        0x99t 0x1t 0x2t 0x7ft
    .end array-data

    .line 96
    :array_218
    .array-data 0x4
        0x95t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
    .end array-data

    :array_224
    .array-data 0x4
        0xa6t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 107
    :array_230
    .array-data 0x4
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_23c
    .array-data 0x4
        0xa0t 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
    .end array-data

    .line 118
    :array_248
    .array-data 0x4
        0x94t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
    .end array-data

    :array_254
    .array-data 0x4
        0xa5t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
    .end array-data

    .line 130
    :array_260
    .array-data 0x4
        0x96t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
    .end array-data

    :array_26c
    .array-data 0x4
        0xa7t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
    .end array-data

    .line 141
    :array_278
    .array-data 0x4
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
    .end array-data

    :array_284
    .array-data 0x4
        0xa1t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
    .end array-data

    .line 152
    :array_290
    .array-data 0x4
        0x97t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
    .end array-data

    :array_29c
    .array-data 0x4
        0xa8t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
    .end array-data

    .line 165
    :array_2a8
    .array-data 0x4
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
    .end array-data

    :array_2b4
    .array-data 0x4
        0x9ft 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 177
    :array_2c0
    .array-data 0x4
        0x91t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
    .end array-data

    :array_2cc
    .array-data 0x4
        0xa2t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
    .end array-data

    .line 188
    :array_2d8
    .array-data 0x4
        0x98t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
    .end array-data

    :array_2e4
    .array-data 0x4
        0xa9t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
    .end array-data

    .line 200
    :array_2f0
    .array-data 0x4
        0x92t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
    .end array-data

    :array_2fc
    .array-data 0x4
        0xa3t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
    .end array-data

    .line 211
    :array_308
    .array-data 0x4
        0x93t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
    .end array-data

    :array_314
    .array-data 0x4
        0xa4t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
    .end array-data

    .line 224
    :array_320
    .array-data 0x4
        0x91t 0x0t 0x2t 0x7ft
        0xa6t 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0xaat 0x1t 0x2t 0x7ft
    .end array-data

    :array_32c
    .array-data 0x4
        0x91t 0x0t 0x2t 0x7ft
        0xa6t 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0xaat 0x1t 0x2t 0x7ft
    .end array-data

    .line 235
    :array_338
    .array-data 0x4
        0xa1t 0x1t 0x2t 0x7ft
        0xa6t 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0xaat 0x1t 0x2t 0x7ft
    .end array-data

    :array_344
    .array-data 0x4
        0xa1t 0x1t 0x2t 0x7ft
        0xa6t 0x1t 0x2t 0x7ft
        0xabt 0x1t 0x2t 0x7ft
        0xaat 0x1t 0x2t 0x7ft
    .end array-data

    .line 248
    :array_350
    .array-data 0x4
        0x9ct 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_35c
    .array-data 0x4
        0xaat 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
    .end array-data

    .line 260
    :array_368
    .array-data 0x4
        0xa4t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
    .end array-data

    :array_374
    .array-data 0x4
        0xa4t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
    .end array-data

    :array_380
    .array-data 0x4
        0xa2t 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
    .end array-data

    :array_38c
    .array-data 0x4
        0xa2t 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
    .end array-data

    .line 279
    :array_398
    .array-data 0x4
        0xa5t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
    .end array-data

    :array_3a4
    .array-data 0x4
        0xa5t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
    .end array-data

    :array_3b0
    .array-data 0x4
        0xa3t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
    .end array-data

    :array_3bc
    .array-data 0x4
        0xa3t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
