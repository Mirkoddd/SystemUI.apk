.class public final Lcom/android/systemui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final KeyButtonView:[I = null

.field public static final KeyButtonView_glowBackground:I = 0x2

.field public static final KeyButtonView_keyCode:I = 0x0

.field public static final KeyButtonView_keyRepeat:I = 0x1

.field public static final NotificationLinearLayout:[I = null

.field public static final NotificationLinearLayout_insetLeft:I = 0x0

.field public static final NotificationRowLayout:[I = null

.field public static final NotificationRowLayout_rowHeight:I = 0x0

.field public static final QuickSettingButton:[I = null

.field public static final QuickSettingButton_buttonText:I = 0x0

.field public static final QuickSettingButton_dimIcon:I = 0x3

.field public static final QuickSettingButton_offIcon:I = 0x2

.field public static final QuickSettingButton_offIcon2:I = 0x5

.field public static final QuickSettingButton_onIcon:I = 0x1

.field public static final QuickSettingButton_onIcon2:I = 0x4

.field public static final ToggleSlider:[I

.field public static final ToggleSlider_text:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12074
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    .line 12131
    new-array v0, v3, [I

    const v1, 0x7f010004

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->NotificationLinearLayout:[I

    .line 12160
    new-array v0, v3, [I

    const v1, 0x7f010005

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->NotificationRowLayout:[I

    .line 12199
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/android/systemui/R$styleable;->QuickSettingButton:[I

    .line 12277
    new-array v0, v3, [I

    const v1, 0x7f010003

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->ToggleSlider:[I

    return-void

    .line 12074
    :array_2e
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data

    .line 12199
    :array_38
    .array-data 0x4
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12059
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
