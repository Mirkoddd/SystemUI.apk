.class public Lcom/android/systemui/statusbar/tablet/HoloClock;
.super Landroid/widget/FrameLayout;
.source "HoloClock.java"


# static fields
.field private static final CLOCK_BG_FONT:Ljava/lang/String; = "/system/fonts/AndroidClock_Highlight.ttf"

.field private static final CLOCK_FG_FONT:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static final CLOCK_FONT:Ljava/lang/String; = "/system/fonts/AndroidClock_Solid.ttf"

.field private static final FONT_DIR:Ljava/lang/String; = "/system/fonts/"

.field private static sBackgroundType:Landroid/graphics/Typeface;

.field private static sForegroundType:Landroid/graphics/Typeface;

.field private static sSolidType:Landroid/graphics/Typeface;


# instance fields
.field private mAttached:Z

.field private mBgText:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mFgText:Landroid/widget/TextView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSolidText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    new-instance v0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/HoloClock$1;-><init>(Lcom/android/systemui/statusbar/tablet/HoloClock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/tablet/HoloClock;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/tablet/HoloClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/tablet/HoloClock;)Ljava/text/SimpleDateFormat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private final getTimeText()Ljava/lang/CharSequence;
    .registers 8

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_39

    const v2, 0x1040095

    .line 165
    .local v2, res:I
    :goto_d
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, format:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 168
    const-string v5, "a"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 169
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v4, sdf:Ljava/text/SimpleDateFormat;
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 170
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormatString:Ljava/lang/String;

    .line 174
    :goto_2e
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, result:Ljava/lang/String;
    return-object v3

    .line 160
    .end local v1           #format:Ljava/lang/String;
    .end local v2           #res:I
    .end local v3           #result:Ljava/lang/String;
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :cond_39
    const v2, 0x1040094

    goto :goto_d

    .line 172
    .restart local v1       #format:Ljava/lang/String;
    .restart local v2       #res:I
    :cond_3d
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .restart local v4       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_2e
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 104
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAttached:Z

    if-nez v1, :cond_31

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAttached:Z

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 120
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_31
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->updateClock()V

    .line 124
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAttached:Z

    if-eqz v0, :cond_13

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAttached:Z

    .line 133
    :cond_13
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 79
    sget-object v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->sSolidType:Landroid/graphics/Typeface;

    if-nez v0, :cond_1f

    .line 80
    const-string v0, "/system/fonts/AndroidClock_Solid.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->sSolidType:Landroid/graphics/Typeface;

    .line 81
    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->sBackgroundType:Landroid/graphics/Typeface;

    .line 82
    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->sForegroundType:Landroid/graphics/Typeface;

    .line 84
    :cond_1f
    const v0, 0x7f0f0079

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    if-eqz v0, :cond_3b

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    sget-object v1, Lcom/android/systemui/statusbar/tablet/HoloClock;->sBackgroundType:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :cond_3b
    const v0, 0x7f0f007a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    if-eqz v0, :cond_51

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    sget-object v1, Lcom/android/systemui/statusbar/tablet/HoloClock;->sForegroundType:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    :cond_51
    const v0, 0x7f0f0069

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    if-eqz v0, :cond_67

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    sget-object v1, Lcom/android/systemui/statusbar/tablet/HoloClock;->sSolidType:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    :cond_67
    return-void
.end method

.method final updateClock()V
    .registers 5

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getTimeText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 153
    .local v0, txt:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_16
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_1f
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_28
    return-void
.end method
