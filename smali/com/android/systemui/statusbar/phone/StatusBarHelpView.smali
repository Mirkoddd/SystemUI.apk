.class public Lcom/android/systemui/statusbar/phone/StatusBarHelpView;
.super Landroid/widget/RelativeLayout;
.source "StatusBarHelpView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final STATUS_BAR_HELP_CHECKED:Ljava/lang/String; = "status_bar_help_checked"

.field private static final TAG:Ljava/lang/String; = "StatusBar.StatusBarHelpView"

.field private static checkBoxChecked:Z


# instance fields
.field private mActionBar:Landroid/widget/RelativeLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonHelpText:Landroid/widget/TextView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisableHelpCheckBox:Landroid/widget/CompoundButton;

.field private mDisplay:Landroid/view/Display;

.field private mDoNotShowAgain:Z

.field private mHelpViewOkButton:Landroid/widget/Button;

.field private mNotificationHelpText:Landroid/widget/TextView;

.field private mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mShowing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->checkBoxChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisplay:Landroid/view/Display;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContentResolver:Landroid/content/ContentResolver;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mHelpViewOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mButtonHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mNotificationHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getStatusBarHelpViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 155
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e1

    const v4, 0x820100

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 162
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 163
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 165
    :cond_1c
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 166
    const-string v1, "StatusBarHelpView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    const v1, 0x7f0c0008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 168
    return-object v0
.end method

.method private registerReceivers()V
    .registers 4

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method private unregisterReceivers()V
    .registers 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    return-void
.end method


# virtual methods
.method public isShowing()Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->registerReceivers()V

    .line 110
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "toggle"
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableHelpCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 134
    if-eqz p2, :cond_c

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->checkBoxChecked:Z

    .line 139
    :goto_b
    return-void

    .line 137
    :cond_c
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->checkBoxChecked:Z

    goto :goto_b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 129
    :cond_9
    :goto_9
    return-void

    .line 122
    :pswitch_a
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->show(ZZ)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableHelpCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "status_bar_help_checked"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDoNotShowAgain:Z

    goto :goto_9

    .line 120
    nop

    :pswitch_data_20
    .packed-switch 0x7f0f00c4
        :pswitch_a
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->unregisterReceivers()V

    .line 116
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 91
    const v0, 0x7f0f00c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mActionBar:Landroid/widget/RelativeLayout;

    .line 92
    const v0, 0x7f0f00c4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mHelpViewOkButton:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mHelpViewOkButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0f00c0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mButtonHelpText:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0f00c5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mNotificationHelpText:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0f00c2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableHelpCheckBox:Landroid/widget/CompoundButton;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableHelpCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisableHelpCheckBox:Landroid/widget/CompoundButton;

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->checkBoxChecked:Z

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContentResolver:Landroid/content/ContentResolver;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "status_bar_help_checked"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_63

    move v0, v1

    :goto_60
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDoNotShowAgain:Z

    .line 104
    return-void

    .line 103
    :cond_63
    const/4 v0, 0x0

    goto :goto_60
.end method

.method public show(ZZ)V
    .registers 7
    .parameter "forceShow"
    .parameter "visible"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->getStatusBarHelpViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 173
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDoNotShowAgain:Z

    if-nez v1, :cond_2b

    .line 174
    if-eqz p2, :cond_1b

    .line 175
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mActionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mShowing:Z

    .line 187
    :cond_1a
    :goto_1a
    return-void

    .line 178
    :cond_1b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 179
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 180
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mShowing:Z

    goto :goto_1a

    .line 182
    :cond_2b
    if-eqz p1, :cond_1a

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mActionBar:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mShowing:Z

    goto :goto_1a
.end method
