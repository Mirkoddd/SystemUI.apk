.class public Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.super Landroid/widget/FrameLayout;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparator;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;
    }
.end annotation


# static fields
.field private static final ACTION_MINI_MODE:Ljava/lang/String; = "com.samsung.action.MINI_MODE_SERVICE"

.field private static final CATEGORY_MINI_MODE:Ljava/lang/String; = "com.samsung.category.MINI_MODE_LAUNCHER"

.field private static final DEBUG:Z = false

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_DRAG:Z = false

.field private static final DRAG_LABEL:Ljava/lang/String; = "MiniAppDragItem"

.field private static final DRAG_TEXT:Ljava/lang/String; = null

.field private static final ICON_LANDSCAPE_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.landscape.focus"

.field private static final ICON_LANDSCAPE_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.landscape.normal"

.field private static final ICON_PORTRAIT_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.portrait.focus"

.field private static final ICON_PORTRAIT_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.portrait.normal"

.field private static final ICON_PREVIEW_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.preview.normal"

.field private static final LONG_PRESS_TIMEOUT:I = 0xfa

.field private static final MESSAGE_APP_ICON_LONG_PRESS:I = 0x2

.field private static final MESSAGE_APP_PREVIEW_LONG_PRESS:I = 0x3

.field private static final MESSAGE_FOCUS_CHANGED:I = 0x1

.field private static final MILLISECOND_SCROLL_AFTER_CLICK_DELAY:I = 0xc8

.field private static final MILLISECOND_SCROLL_DELAY:I = 0x1f4

.field private static final MINIMODETRAY_FOCUSED_TEXT:I = -0xd74401

.field private static final MINIMODETRAY_TEXT:I = -0x1

.field private static final NUM_HW_TOUCH_SOUND_CHANNELS:I = 0x1

.field public static final PREIVEW_ANIMATION_DURATION:I = 0x190

.field public static final PREIVEW_ANIMATION_START_OFFSET:I = 0x96

.field private static final SUPPORT_DEFAULT_ICON_LIST_ORDER:Z = false

.field private static final SUPPORT_MULTIWINDOW:Z = false

.field private static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "MiniModeAppsPanel"


# instance fields
.field private mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundProtector:Landroid/view/View;

.field private mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelButton:Landroid/widget/Button;

.field private mChosenApps:[Ljava/lang/String;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mComponentDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentDescriptionsOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerScroller:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

.field mCurrentDragAppIcon:Landroid/widget/ImageView;

.field private mCurrentDraggingView:Landroid/view/View;

.field private mDoneButton:Landroid/widget/Button;

.field private mEditButton:Landroid/widget/Button;

.field private mEditPanelUIEnabled:Z

.field private mEmptyAppsButton:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mIsScrollDelayed:Z

.field private mIsScrollLeft:Z

.field private mMiniAppBgHeight:I

.field private mMiniAppsBG:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

.field private mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

.field private mMiniAppsScroller:Landroid/view/ViewGroup;

.field private mMiniAppsTray:Landroid/widget/FrameLayout;

.field private mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

.field private mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

.field mOnDragging:Z

.field private mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

.field private mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;

.field mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

.field private mPreviewItemClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;

.field private mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

.field private mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;

.field private mRecentsContainer:Landroid/widget/LinearLayout;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStatusBarHandler:Landroid/os/Handler;

.field private mTrayBGDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;

.field private mTrayContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;

.field private mTrayIconLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

.field private mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;

.field private mTrayItemDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 658
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 659
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 662
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 144
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    invoke-direct {v3, p0, v5, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;II)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    .line 145
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    .line 148
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 149
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    .line 150
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 151
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 152
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 153
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 155
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 156
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 157
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 158
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 159
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 160
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    .line 162
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 165
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;

    .line 168
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

    .line 171
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

    .line 174
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;

    .line 177
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;

    .line 180
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;

    .line 183
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;

    .line 186
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;

    .line 189
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z

    .line 190
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollLeft:Z

    .line 193
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

    .line 196
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;

    .line 199
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 202
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDragAppIcon:Landroid/widget/ImageView;

    .line 217
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPoolId:[I

    .line 518
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    .line 538
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    .line 593
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 664
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 665
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_a3

    const/4 v2, 0x1

    .line 669
    .local v2, xlarge:Z
    :cond_a3
    if-eqz v2, :cond_c8

    const/16 v3, 0xa0

    :goto_a7
    iput v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIconDpi:I

    .line 672
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 673
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    .line 678
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->initComponentDescriptionOrder()V

    .line 680
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->initComponentDescriptions()V

    .line 682
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->initMiniModeAppsPanelSound()V

    .line 683
    return-void

    .line 669
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_c8
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_a7
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIconDpi:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/content/ComponentName;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getComponentDescriptionIndex(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->updateImageOfMiniModeAppsPanel()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->refreshApplicationList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->closeEditPanel()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->updateTextOfMiniModeAppsPanel()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->playHwTouchSound()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->openEditPanel()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->save()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->playTrayCloseSound()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollLeft:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollLeft:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

    return-object v0
.end method

.method static synthetic access$3600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/sec/minimode/manager/MiniModeAppManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/view/DragEvent;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/HorizontalScrollView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private adjustTrayPadding()V
    .registers 8

    .prologue
    const v6, 0x7f0a0052

    const/4 v5, 0x0

    .line 2023
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int v0, v2, v3

    .line 2024
    .local v0, containerWidth:I
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 2026
    .local v1, scrollerWidth:I
    if-ge v0, v1, :cond_3f

    .line 2027
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2031
    :goto_3e
    return-void

    .line 2029
    :cond_3f
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_3e
.end method

.method private clearItemsAnimation()V
    .registers 5

    .prologue
    .line 1411
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1412
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v1, :cond_15

    .line 1413
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1414
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1412
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1416
    .end local v0           #child:Landroid/view/View;
    :cond_15
    const v3, 0x7f0f0053

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1417
    return-void
.end method

.method private closeEditPanel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2041
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_28

    .line 2042
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2043
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2044
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2045
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2046
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2047
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2049
    :cond_28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 2050
    return-void
.end method

.method private createPreviewAnimation()Landroid/view/animation/AnimationSet;
    .registers 12

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    .line 989
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 993
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f9c28f6

    const v3, 0x3f99999a

    const v6, 0x3ee147ae

    const v8, 0x3f0a3d71

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 994
    .local v0, scaleZoom:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 995
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 996
    .local v10, fadeIn:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 997
    const-wide/16 v1, 0x190

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 998
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 999
    const-wide/16 v1, 0x96

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 1000
    return-object v9
.end method

.method private findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .registers 5
    .parameter "name"

    .prologue
    .line 1955
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1956
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1961
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .registers 5
    .parameter "name"

    .prologue
    .line 620
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 623
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 628
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private getComponentDescriptionIndex(Landroid/content/ComponentName;)I
    .registers 4
    .parameter "name"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private initChosenApps()V
    .registers 2

    .prologue
    .line 1965
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanelDataStorage;->load(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 1972
    return-void
.end method

.method private initComponentDescriptionOrder()V
    .registers 8

    .prologue
    .line 609
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    .line 611
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, mComponentNames:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_19
    if-ge v1, v2, :cond_25

    aget-object v4, v0, v1

    .line 615
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 617
    .end local v4           #str:Ljava/lang/String;
    :cond_25
    return-void
.end method

.method private initComponentDescriptions()V
    .registers 10

    .prologue
    .line 885
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 941
    :cond_4
    return-void

    .line 892
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .local v3, launcherIntent:Landroid/content/Intent;
    const-string v6, "com.samsung.category.MINI_MODE_LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 896
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 898
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 899
    .local v5, r:Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 900
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-eqz v5, :cond_24

    .line 902
    :try_start_33
    new-instance v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_42

    .line 909
    .restart local v0       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :goto_3a
    if-eqz v0, :cond_24

    .line 912
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 903
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :catch_42
    move-exception v1

    .line 904
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 905
    .restart local v0       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    const-string v6, "MiniModeAppsPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initComponentDescriptions() : exception occurs! while loading mini app (serviceInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method private initGestureDetector()V
    .registers 6

    .prologue
    .line 873
    new-instance v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$10;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 880
    .local v1, listener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    const/4 v0, 0x1

    .line 881
    .local v0, ignoreMultitouch:Z
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 882
    return-void
.end method

.method private initMiniModeAppsPanelSound()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 945
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v5, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    .line 946
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f050001

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 947
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f050002

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    .line 950
    return-void
.end method

.method private isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2074
    :try_start_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    .line 2086
    :cond_9
    :goto_9
    return v2

    .line 2076
    :cond_a
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2078
    .local v1, label:Ljava/lang/String;
    const-string v4, "MiniAppDragItem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1e

    move-result v4

    if-nez v4, :cond_9

    move v2, v3

    .line 2086
    goto :goto_9

    .line 2081
    .end local v1           #label:Ljava/lang/String;
    :catch_1e
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 2083
    goto :goto_9
.end method

.method private isChosenApp(Ljava/lang/String;)Z
    .registers 8
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    .line 1975
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-nez v5, :cond_6

    .line 1983
    :cond_5
    :goto_5
    return v4

    .line 1978
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_a
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 1979
    .local v3, str:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1978
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1983
    .end local v3           #str:Ljava/lang/String;
    :cond_17
    const/4 v4, 0x0

    goto :goto_5
.end method

.method private isMiinAppsEditPanelShowing()Z
    .registers 2

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    .line 2067
    const/4 v0, 0x0

    .line 2069
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    goto :goto_5
.end method

.method private openEditPanel()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2054
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_1a

    .line 2055
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2056
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2057
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2058
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2060
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 2061
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2063
    :cond_25
    return-void
.end method

.method private playHwTouchSound()V
    .registers 11

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 954
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 957
    .local v7, mRingerMode:I
    packed-switch v7, :pswitch_data_2a

    .line 968
    :goto_b
    return-void

    .line 959
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 960
    .local v9, streamVolume:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 961
    .local v8, streamMaxVolume:F
    div-float v2, v9, v8

    .line 962
    .local v2, adjustmentValue:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPoolId:[I

    aget v1, v1, v4

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_b

    .line 957
    :pswitch_data_2a
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method private playTrayCloseSound()V
    .registers 11

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 972
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 975
    .local v7, mRingerMode:I
    packed-switch v7, :pswitch_data_2c

    .line 986
    :goto_b
    return-void

    .line 977
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 978
    .local v9, streamVolume:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 979
    .local v8, streamMaxVolume:F
    div-float v2, v9, v8

    .line 980
    .local v2, adjustmentValue:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPoolId:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_b

    .line 975
    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method private refreshApplicationList()V
    .registers 14

    .prologue
    const v12, 0x7f03000c

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 1006
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->clearItemsAnimation()V

    .line 1008
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1010
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1012
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->initChosenApps()V

    .line 1014
    const/4 v2, 0x0

    .line 1015
    .local v2, componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;>;"
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 1016
    .restart local v2       #componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;>;"
    new-instance v8, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1019
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1020
    .local v1, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v12, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1021
    .local v7, view:Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1022
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1029
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1030
    invoke-virtual {v7, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1032
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f03000f

    invoke-static {v8, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1034
    .local v5, preview:Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1035
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1037
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1040
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isChosenApp(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1041
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setIconView(Landroid/view/View;)V

    .line 1042
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setPreview(Landroid/view/View;)V

    .line 1043
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v8

    if-nez v8, :cond_88

    .line 1044
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setPreviewAnimation(Landroid/view/animation/AnimationSet;)V

    .line 1046
    :cond_88
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updateLabel()V

    .line 1047
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v9, :cond_9c

    move v8, v9

    :goto_98
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updateResources(Z)V

    goto :goto_2a

    :cond_9c
    const/4 v8, 0x0

    goto :goto_98

    .line 1050
    .end local v1           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v5           #preview:Landroid/view/View;
    .end local v7           #view:Landroid/view/View;
    :cond_9e
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-eqz v8, :cond_bc

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_a6
    if-ge v3, v4, :cond_d8

    aget-object v6, v0, v3

    .line 1052
    .local v6, str:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    move-result-object v1

    .line 1053
    .restart local v1       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-eqz v1, :cond_b9

    .line 1054
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1051
    :cond_b9
    add-int/lit8 v3, v3, 0x1

    goto :goto_a6

    .line 1059
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v4           #len$:I
    .end local v6           #str:Ljava/lang/String;
    .local v3, i$:Ljava/util/Iterator;
    :cond_bc
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c0
    :goto_c0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1060
    .restart local v1       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-eqz v1, :cond_c0

    .line 1061
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_c0

    .line 1067
    .end local v1           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_d8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v12, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 1068
    return-void
.end method

.method private save()Z
    .registers 6

    .prologue
    .line 1987
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 1989
    .local v2, str:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 1990
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1991
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1989
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1994
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :cond_2c
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const-string v4, "EOF"

    aput-object v4, v2, v3

    .line 1996
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanelDataStorage;->store(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 2000
    const/4 v3, 0x1

    .line 2003
    :goto_45
    return v3

    :cond_46
    const/4 v3, 0x0

    goto :goto_45
.end method

.method private setCloseIconEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 1406
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1408
    :cond_9
    return-void
.end method

.method private setEmptyBtnVisibility()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2007
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_14

    .line 2008
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 2010
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2012
    :cond_12
    const/4 v0, 0x1

    .line 2018
    :cond_13
    :goto_13
    return v0

    .line 2014
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    .line 2016
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13
.end method

.method private updateImageOfMiniModeAppsPanel()V
    .registers 4

    .prologue
    .line 867
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 868
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updateIconInfo()V

    goto :goto_6

    .line 870
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :cond_16
    return-void
.end method

.method private updateTextOfMiniModeAppsPanel()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 838
    const v5, 0x7f0f005a

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 839
    .local v2, editBtn:Landroid/widget/Button;
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v5, :cond_18

    .line 840
    const v5, 0x7f0800d1

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 841
    invoke-virtual {v2, v8, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 845
    :cond_18
    const v5, 0x7f0f0057

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 846
    .local v4, emptyBtn:Landroid/widget/TextView;
    if-eqz v4, :cond_2c

    .line 847
    const v5, 0x7f0800cf

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 848
    invoke-virtual {v4, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 851
    :cond_2c
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f0f005c

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 852
    .local v3, editPanelTitle:Landroid/widget/TextView;
    const v5, 0x7f0800ce

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 853
    invoke-virtual {v3, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 855
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f0f005e

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 856
    .local v1, doneBtn:Landroid/widget/Button;
    const v5, 0x7f0800d0

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 857
    invoke-virtual {v1, v8, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 859
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f0f005d

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 860
    .local v0, cancelBtn:Landroid/widget/Button;
    const/high16 v5, 0x104

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 861
    invoke-virtual {v0, v8, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 862
    return-void
.end method


# virtual methods
.method public closeMiniAppsPanel()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1395
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 1396
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_d

    .line 1397
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1399
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->refreshApplicationList()V

    .line 1400
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 1401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->closeEditPanel()V

    .line 1402
    return-void
.end method

.method public isInContentArea(II)Z
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 636
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 637
    .local v1, l:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 638
    .local v2, r:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 639
    .local v3, t:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 640
    .local v0, b:I
    if-lt p1, v1, :cond_32

    if-ge p1, v2, :cond_32

    if-lt p2, v3, :cond_32

    if-ge p2, v0, :cond_32

    const/4 v4, 0x1

    :goto_31
    return v4

    :cond_32
    const/4 v4, 0x0

    goto :goto_31
.end method

.method public onClick(Landroid/view/View;)V
    .registers 16
    .parameter "view"

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5c

    .line 1074
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1075
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1076
    .local v1, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0f0062

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1077
    .local v7, previewIcon:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 1078
    .local v0, anim:Landroid/view/animation/AnimationSet;
    if-nez v0, :cond_27

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1082
    :cond_27
    if-eqz v0, :cond_2c

    .line 1083
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1086
    :cond_2c
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1087
    .local v4, i:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 1088
    .local v8, previewWidth:I
    mul-int v10, v4, v8

    .line 1089
    .local v10, xOffsetAtLeft:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v11}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v11

    sub-int/2addr v11, v8

    div-int/lit8 v2, v11, 0x2

    .line 1091
    .local v2, centerX:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    sub-int v12, v10, v2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1092
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1093
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 1128
    .end local v0           #anim:Landroid/view/animation/AnimationSet;
    .end local v1           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v2           #centerX:I
    .end local v4           #i:I
    .end local v7           #previewIcon:Landroid/widget/ImageView;
    .end local v8           #previewWidth:I
    .end local v10           #xOffsetAtLeft:I
    :cond_5b
    :goto_5b
    return-void

    .line 1098
    :cond_5c
    if-eqz p1, :cond_5b

    .line 1100
    move-object v9, p1

    .line 1101
    .local v9, v:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1102
    .local v3, componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$2900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1107
    .local v6, name:Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 1108
    .local v5, intent:Landroid/content/Intent;
    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$3000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v11

    instance-of v11, v11, Landroid/content/pm/ServiceInfo;

    if-eqz v11, :cond_a2

    .line 1110
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 1111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1119
    :cond_84
    :goto_84
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v11, :cond_8e

    .line 1120
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setClickable(Z)V

    .line 1122
    :cond_8e
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1125
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v12, 0x425

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1126
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v12, 0x425

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5b

    .line 1112
    :cond_a2
    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$3000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v11

    instance-of v11, v11, Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_84

    .line 1114
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 1115
    const/high16 v11, 0x1000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_84
.end method

.method protected onFinishInflate()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 687
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 691
    const v1, 0x7f0f0054

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    .line 692
    const v1, 0x7f0f0055

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    .line 693
    const v1, 0x7f0f0052

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    .line 695
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000c

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 698
    .local v8, miniAppItemView:Landroid/view/View;
    const v1, 0x7f0f0058

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsTray:Landroid/widget/FrameLayout;

    .line 701
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000e

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 704
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 707
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    iget v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppBgHeight:I

    const/16 v5, 0x7e1

    const v6, 0x800028

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 717
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 718
    const-string v1, "MiniModeAppsEditPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 719
    const v1, 0x7f0c0011

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 720
    const-string v1, "com.android.systemui"

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 722
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0f005f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    .line 725
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0060

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 727
    const v1, 0x7f0f0053

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 729
    const v1, 0x7f0f005a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 731
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    if-eqz v1, :cond_d2

    .line 732
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSoundEffectsEnabled(Z)V

    .line 733
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_17c

    const/4 v1, 0x1

    :goto_c6
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 734
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$4;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    :cond_d2
    const v1, 0x7f0f0057

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 744
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_eb

    .line 745
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$5;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    :cond_eb
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0f005e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 753
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$6;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0f005d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 762
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$7;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 781
    const v1, 0x7f0f0059

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 782
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$8;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 797
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$9;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 815
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 816
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 817
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 819
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->refreshApplicationList()V

    .line 821
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 832
    new-instance v1, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 833
    new-instance v1, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    .line 834
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->setOnFocusChangedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;)V

    .line 835
    return-void

    :cond_17c
    move v1, v3

    .line 733
    goto/16 :goto_c6
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 10
    .parameter "view"

    .prologue
    const/16 v7, 0x425

    const/4 v3, 0x1

    .line 1131
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_3c

    .line 1132
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1133
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1134
    .local v0, componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$2900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1138
    .local v1, name:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v5, v5, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v6, v6

    invoke-virtual {v4, v1, v5, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->startWithPosition(Landroid/content/ComponentName;II)V

    .line 1139
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    .line 1141
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1144
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1145
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1149
    .end local v0           #componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v1           #name:Landroid/content/ComponentName;
    .end local v2           #v:Landroid/view/View;
    :goto_3b
    return v3

    :cond_3c
    const/4 v3, 0x0

    goto :goto_3b
.end method

.method protected onMeasure(II)V
    .registers 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 2035
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2036
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->adjustTrayPadding()V

    .line 2037
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 1176
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 1180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_76

    .line 1245
    :cond_10
    :goto_10
    return v8

    .line 1184
    :pswitch_11
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1185
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1186
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_10

    .line 1192
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_24
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_10

    .line 1202
    :cond_2a
    if-eqz p1, :cond_10

    .line 1204
    move-object v3, p1

    .line 1205
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0f0050

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1207
    .local v0, appIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_82

    goto :goto_10

    .line 1211
    :pswitch_3e
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1213
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1215
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    goto :goto_10

    .line 1221
    :pswitch_4b
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    if-eqz v4, :cond_10

    .line 1223
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1225
    .local v1, componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1228
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$2900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v7, v7, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/minimode/manager/MiniModeAppManager;->move(Landroid/content/ComponentName;II)V

    goto :goto_10

    .line 1236
    .end local v1           #componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :pswitch_6e
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1238
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    goto :goto_10

    .line 1180
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_11
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch

    .line 1207
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_6e
        :pswitch_4b
        :pswitch_6e
    .end packed-switch
.end method

.method public openMiniAppsPanel()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1385
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 1386
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_d

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1389
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 1391
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .registers 2
    .parameter "bar"

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .line 655
    return-void
.end method

.method public setItemsAnimation(Z)V
    .registers 17
    .parameter "isShowAnim"

    .prologue
    .line 1253
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 1254
    .local v5, count:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0051

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1255
    .local v8, miniAppItemHeight:I
    add-int/lit8 v11, v5, -0x1

    mul-int/lit8 v9, v11, 0x28

    .line 1256
    .local v9, miniAppItemHideAnimDelay:I
    if-eqz p1, :cond_a1

    .line 1257
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1c
    if-ge v7, v5, :cond_48

    .line 1258
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1259
    .local v4, child:Landroid/view/View;
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1260
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/4 v12, 0x0

    int-to-float v13, v8

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1261
    .local v10, rotateItem:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v11, 0x10e

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1262
    mul-int/lit8 v11, v7, 0x28

    add-int/lit8 v11, v11, 0x3c

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1263
    invoke-virtual {v4, v10}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1264
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1257
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 1266
    .end local v4           #child:Landroid/view/View;
    .end local v10           #rotateItem:Landroid/view/animation/TranslateAnimation;
    :cond_48
    const v11, 0x7f0f0053

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1267
    .local v3, bg:Landroid/view/View;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppBgHeight:I

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-direct {v2, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1269
    .local v2, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v11, 0x10e

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1270
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-direct {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1271
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    add-int/lit16 v11, v9, 0x14a

    int-to-long v11, v11

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1272
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1273
    .local v1, aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1274
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1275
    invoke-virtual {v3, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1276
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1279
    const v11, 0x7f0f0056

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1280
    .local v6, emptyBtnContainer:Landroid/view/View;
    if-eqz v6, :cond_98

    .line 1281
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1282
    invoke-virtual {v6, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1283
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1286
    :cond_98
    new-instance v11, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1381
    :cond_a0
    :goto_a0
    return-void

    .line 1315
    .end local v0           #alphaAni:Landroid/view/animation/AlphaAnimation;
    .end local v1           #aniSet:Landroid/view/animation/AnimationSet;
    .end local v2           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v3           #bg:Landroid/view/View;
    .end local v6           #emptyBtnContainer:Landroid/view/View;
    .end local v7           #i:I
    :cond_a1
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_a2
    if-ge v7, v5, :cond_d0

    .line 1316
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1317
    .restart local v4       #child:Landroid/view/View;
    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    int-to-float v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1319
    .restart local v10       #rotateItem:Landroid/view/animation/TranslateAnimation;
    sub-int v11, v5, v7

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v11, v11, 0x28

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1320
    const-wide/16 v11, 0x10e

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1321
    invoke-virtual {v4, v10}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1322
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1315
    add-int/lit8 v7, v7, 0x1

    goto :goto_a2

    .line 1343
    .end local v4           #child:Landroid/view/View;
    .end local v10           #rotateItem:Landroid/view/animation/TranslateAnimation;
    :cond_d0
    const v11, 0x7f0f0053

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1344
    .restart local v3       #bg:Landroid/view/View;
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v2, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1346
    .restart local v2       #animation:Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-direct {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1347
    .restart local v0       #alphaAni:Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1348
    .restart local v1       #aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1349
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1351
    const-wide/16 v11, 0x10e

    invoke-virtual {v1, v11, v12}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1352
    int-to-long v11, v9

    invoke-virtual {v1, v11, v12}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 1354
    new-instance v11, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$13;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$13;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1370
    invoke-virtual {v3, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1371
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1374
    const v11, 0x7f0f0056

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1375
    .restart local v6       #emptyBtnContainer:Landroid/view/View;
    if-eqz v6, :cond_a0

    .line 1376
    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    invoke-virtual {v6, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1378
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_a0
.end method

.method public setStatusBarHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    .line 1250
    return-void
.end method
