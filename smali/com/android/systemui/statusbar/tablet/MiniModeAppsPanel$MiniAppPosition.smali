.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniAppPosition"
.end annotation


# instance fields
.field final X_POSITION_OFFSET:I

.field final Y_POSITION_OFFSET:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;II)V
    .registers 5
    .parameter
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1153
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->X_POSITION_OFFSET:I

    .line 1154
    const/16 v0, -0x32

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->Y_POSITION_OFFSET:I

    .line 1160
    int-to-float v0, p2

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->x:F

    .line 1161
    int-to-float v0, p3

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->y:F

    .line 1162
    return-void
.end method


# virtual methods
.method calculatePosition(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 1167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 1168
    .local v0, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 1170
    .local v1, rawY:F
    const/high16 v2, -0x3cb8

    add-float/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->x:F

    .line 1171
    const/high16 v2, -0x3db8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->y:F

    .line 1172
    return-void
.end method
