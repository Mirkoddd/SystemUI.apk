.class public Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
.super Landroid/widget/LinearLayout;
.source "InputMethodsPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;,
        Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$InputMethodComparator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InputMethodsPanel"


# instance fields
.field private mAttached:Z

.field private mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigureImeShortcut:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private final mEnabledInputMethodAndSubtypesCache:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEnabledInputMethodAndSubtypesCacheStr:Ljava/lang/String;

.field private mHardKeyboardAvailable:Z

.field private mHardKeyboardEnabled:Z

.field private mHardKeyboardEnabledChangeListener:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;

.field private mHardKeyboardSection:Landroid/widget/LinearLayout;

.field private mHardKeyboardSwitch:Landroid/widget/Switch;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodMenuList:Landroid/widget/LinearLayout;

.field private mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mLastSystemLocaleString:Ljava/lang/String;

.field private mPackageChanged:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRadioViewAndImiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$1;-><init>(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mIntentFilter:Landroid/content/IntentFilter;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mRadioViewAndImiMap:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$InputMethodComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$InputMethodComparator;-><init>(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mEnabledInputMethodAndSubtypesCache:Ljava/util/TreeMap;

    .line 72
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mAttached:Z

    .line 73
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageChanged:Z

    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mContext:Landroid/content/Context;

    .line 113
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->onPackageChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;Landroid/view/View;)Landroid/util/Pair;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->updateRadioButtonsByView(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setInputMethodAndSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method private createInputMethodItem(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/View;
    .registers 16
    .parameter "imi"
    .parameter "subtype"

    .prologue
    .line 234
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v10

    if-eqz v10, :cond_7f

    .line 235
    :cond_8
    const/4 v7, 0x0

    .line 239
    .local v7, subtypeName:Ljava/lang/CharSequence;
    :goto_9
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getIMIName(Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 240
    .local v1, imiName:Ljava/lang/CharSequence;
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getSubtypeIcon(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 241
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mContext:Landroid/content/Context;

    const v11, 0x7f03000a

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 242
    .local v9, view:Landroid/view/View;
    const v10, 0x7f0f0044

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 243
    .local v6, subtypeIcon:Landroid/widget/ImageView;
    const v10, 0x7f0f0045

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 244
    .local v3, itemTitle:Landroid/widget/TextView;
    const v10, 0x7f0f0046

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 245
    .local v2, itemSubtitle:Landroid/widget/TextView;
    const v10, 0x7f0f0048

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 246
    .local v5, settingsIcon:Landroid/widget/ImageView;
    const v10, 0x7f0f0042

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 247
    .local v8, subtypeView:Landroid/view/View;
    if-nez v7, :cond_84

    .line 248
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :goto_50
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, settingsActivity:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8f

    .line 259
    new-instance v10, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$2;

    invoke-direct {v10, p0, p1, v4}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$2;-><init>(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    :goto_6c
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mRadioViewAndImiMap:Ljava/util/HashMap;

    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v10, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$3;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$3;-><init>(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    return-object v9

    .line 237
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    .end local v1           #imiName:Ljava/lang/CharSequence;
    .end local v2           #itemSubtitle:Landroid/widget/TextView;
    .end local v3           #itemTitle:Landroid/widget/TextView;
    .end local v4           #settingsActivity:Ljava/lang/String;
    .end local v5           #settingsIcon:Landroid/widget/ImageView;
    .end local v6           #subtypeIcon:Landroid/widget/ImageView;
    .end local v7           #subtypeName:Ljava/lang/CharSequence;
    .end local v8           #subtypeView:Landroid/view/View;
    .end local v9           #view:Landroid/view/View;
    :cond_7f
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getSubtypeName(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v7

    .restart local v7       #subtypeName:Ljava/lang/CharSequence;
    goto :goto_9

    .line 251
    .restart local v0       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v1       #imiName:Ljava/lang/CharSequence;
    .restart local v2       #itemSubtitle:Landroid/widget/TextView;
    .restart local v3       #itemTitle:Landroid/widget/TextView;
    .restart local v5       #settingsIcon:Landroid/widget/ImageView;
    .restart local v6       #subtypeIcon:Landroid/widget/ImageView;
    .restart local v8       #subtypeView:Landroid/view/View;
    .restart local v9       #view:Landroid/view/View;
    :cond_84
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50

    .line 273
    .restart local v4       #settingsActivity:Ljava/lang/String;
    :cond_8f
    const v10, 0x7f0f0047

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 274
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6c
.end method

.method private getCurrentInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .registers 7

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_input_method"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, curInputMethodId:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mEnabledInputMethodAndSubtypesCache:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 431
    .local v0, cachedImiSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 432
    .local v3, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 443
    .end local v3           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_2e
    return-object v3

    .line 437
    :cond_2f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getEnabledInputMethodAndSubtypeList()Ljava/util/TreeMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 438
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 439
    .restart local v3       #imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    goto :goto_2e

    .line 443
    .end local v3           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_52
    const/4 v3, 0x0

    goto :goto_2e
.end method

.method private getEnabledInputMethodAndSubtypeList()Ljava/util/TreeMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_input_methods"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, newEnabledIMIs:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, currentSystemLocaleString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mEnabledInputMethodAndSubtypesCacheStr:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mLastSystemLocaleString:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageChanged:Z

    if-eqz v5, :cond_5f

    .line 413
    :cond_30
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mEnabledInputMethodAndSubtypesCache:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->clear()V

    .line 414
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 415
    .local v3, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 416
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mEnabledInputMethodAndSubtypesCache:Ljava/util/TreeMap;

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 419
    .end local v2           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_58
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mEnabledInputMethodAndSubtypesCacheStr:Ljava/lang/String;

    .line 420
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageChanged:Z

    .line 421
    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mLastSystemLocaleString:Ljava/lang/String;

    .line 423
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_5f
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mEnabledInputMethodAndSubtypesCache:Ljava/util/TreeMap;

    return-object v5
.end method

.method private getIMIName(Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "imi"

    .prologue
    .line 447
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 448
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3
.end method

.method private getSubtypeIcon(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "imi"
    .parameter "subtype"

    .prologue
    const/4 v3, 0x0

    .line 462
    if-eqz p1, :cond_68

    .line 469
    if-eqz p2, :cond_1a

    .line 470
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 485
    :goto_19
    return-object v1

    .line 472
    :cond_1a
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-lez v1, :cond_39

    .line 473
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_19

    .line 478
    :cond_39
    :try_start_39
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_49} :catch_4b

    move-result-object v1

    goto :goto_19

    .line 480
    :catch_4b
    move-exception v0

    .line 481
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "InputMethodsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME can\'t be found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_68
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private getSubtypeName(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .registers 6
    .parameter "imi"
    .parameter "subtype"

    .prologue
    .line 452
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const/4 v0, 0x0

    .line 457
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5
.end method

.method private onPackageChanged()V
    .registers 2

    .prologue
    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageChanged:Z

    .line 493
    return-void
.end method

.method private setInputMethodAndSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6
    .parameter "imi"
    .parameter "subtype"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_10

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/view/inputmethod/InputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 329
    :goto_f
    return-void

    .line 327
    :cond_10
    const-string v0, "InputMethodsPanel"

    const-string v1, "IME Token is not set yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private showConfigureInputMethods()V
    .registers 3

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1420

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 228
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->startActivity(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 221
    return-void
.end method

.method private updateHardKeyboardEnabled()V
    .registers 3

    .prologue
    .line 188
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardAvailable:Z

    if-eqz v1, :cond_19

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 190
    .local v0, checked:Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardEnabled:Z

    if-eq v1, v0, :cond_19

    .line 191
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardEnabled:Z

    .line 192
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardEnabledChangeListener:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;

    if-eqz v1, :cond_19

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardEnabledChangeListener:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;->onHardKeyboardEnabledChange(Z)V

    .line 196
    .end local v0           #checked:Z
    :cond_19
    return-void
.end method

.method private updateHardKeyboardSection()V
    .registers 3

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardAvailable:Z

    if-eqz v0, :cond_1c

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardSection:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardEnabled:Z

    if-eq v0, v1, :cond_1b

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 348
    :cond_1b
    :goto_1b
    return-void

    .line 346
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardSection:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1b
.end method

.method private updateRadioButtons()V
    .registers 3

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getCurrentInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->updateRadioButtonsByImiAndSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 377
    return-void
.end method

.method private updateRadioButtonsByImiAndSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 9
    .parameter "imi"
    .parameter "subtype"

    .prologue
    .line 382
    if-nez p1, :cond_3

    .line 402
    :cond_2
    :goto_2
    return-void

    .line 386
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mRadioViewAndImiMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 387
    .local v2, radioView:Landroid/view/View;
    const v4, 0x7f0f0043

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 389
    .local v3, subtypeRadioButton:Landroid/widget/RadioButton;
    if-nez v3, :cond_2c

    .line 390
    const-string v4, "InputMethodsPanel"

    const-string v5, "RadioButton was not found in the selected subtype view"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 393
    :cond_2c
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mRadioViewAndImiMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 395
    .local v1, imiAndSubtype:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_54

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v4, p2}, Landroid/view/inputmethod/InputMethodSubtype;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 397
    :cond_54
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_d

    .line 399
    :cond_59
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_d
.end method

.method private updateRadioButtonsByView(Landroid/view/View;)Landroid/util/Pair;
    .registers 9
    .parameter "selectedView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    const/4 v3, 0x0

    .line 353
    .local v3, selectedImiAndSubtype:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mRadioViewAndImiMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 354
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mRadioViewAndImiMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 355
    .local v2, radioView:Landroid/view/View;
    const v5, 0x7f0f0043

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 357
    .local v4, subtypeRadioButton:Landroid/widget/RadioButton;
    if-nez v4, :cond_33

    .line 358
    const-string v5, "InputMethodsPanel"

    const-string v6, "RadioButton was not found in the selected subtype view"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v5, 0x0

    .line 371
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #radioView:Landroid/view/View;
    .end local v4           #subtypeRadioButton:Landroid/widget/RadioButton;
    :goto_32
    return-object v5

    .line 361
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #radioView:Landroid/view/View;
    .restart local v4       #subtypeRadioButton:Landroid/widget/RadioButton;
    :cond_33
    if-ne v2, p1, :cond_43

    .line 362
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mRadioViewAndImiMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 364
    .local v1, imiAndSubtype:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object v3, v1

    .line 365
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_13

    .line 367
    .end local v1           #imiAndSubtype:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_43
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_13

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #radioView:Landroid/view/View;
    .end local v4           #subtypeRadioButton:Landroid/widget/RadioButton;
    :cond_48
    move-object v5, v3

    .line 371
    goto :goto_32
.end method

.method private updateUiElements()V
    .registers 10

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->updateHardKeyboardSection()V

    .line 294
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mInputMethodMenuList:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 295
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mRadioViewAndImiMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 296
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getEnabledInputMethodAndSubtypeList()Ljava/util/TreeMap;

    move-result-object v1

    .line 300
    .local v1, enabledIMIs:Ljava/util/Map;,"Ljava/util/Map<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 301
    .local v0, cachedImiSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 302
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 303
    .local v6, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v6, :cond_3b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_46

    .line 304
    :cond_3b
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mInputMethodMenuList:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-direct {p0, v4, v8}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->createInputMethodItem(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_21

    .line 308
    :cond_46
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 309
    .local v5, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mInputMethodMenuList:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->createInputMethodItem(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4a

    .line 312
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v5           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->updateRadioButtons()V

    .line 313
    return-void
.end method


# virtual methods
.method public closePanel(Z)V
    .registers 5
    .parameter "closeKeyboard"

    .prologue
    .line 209
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    if-eqz v0, :cond_11

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setIconImage(I)V

    .line 213
    :cond_11
    if-eqz p1, :cond_1d

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 216
    :cond_1d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->updateHardKeyboardEnabled()V

    .line 217
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 180
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 181
    .local v1, y:I
    if-ltz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_1f

    if-ltz v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 182
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 184
    :goto_1e
    return v2

    :cond_1f
    const/4 v2, 0x1

    goto :goto_1e
.end method

.method public isInContentArea(II)Z
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mAttached:Z

    if-nez v0, :cond_15

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mAttached:Z

    .line 147
    :cond_15
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mConfigureImeShortcut:Landroid/view/View;

    if-ne p1, v0, :cond_b

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->showConfigureInputMethods()V

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->closePanel(Z)V

    .line 172
    :cond_b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mAttached:Z

    if-eqz v0, :cond_13

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mAttached:Z

    .line 138
    :cond_13
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 151
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mInputMethodMenuList:Landroid/widget/LinearLayout;

    .line 152
    const v0, 0x7f0f004a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardSection:Landroid/widget/LinearLayout;

    .line 153
    const v0, 0x7f0f004c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardSwitch:Landroid/widget/Switch;

    .line 154
    const v0, 0x7f0f004e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mConfigureImeShortcut:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mConfigureImeShortcut:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->updateUiElements()V

    .line 159
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 504
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->pokeWakelock()V

    .line 508
    :cond_1a
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openPanel()V
    .registers 4

    .prologue
    .line 199
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setVisibility(I)V

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->updateUiElements()V

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    if-eqz v1, :cond_13

    .line 202
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setIconImage(I)V

    .line 204
    :cond_13
    const v1, 0x7f0f004e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 205
    .local v0, ConfigureImeShortcutTextView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .registers 2
    .parameter "b"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .line 123
    return-void
.end method

.method public setHardKeyboardEnabledChangeListener(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardEnabledChangeListener:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;

    .line 129
    return-void
.end method

.method public setHardKeyboardStatus(ZZ)V
    .registers 4
    .parameter "available"
    .parameter "enabled"

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardAvailable:Z

    if-ne v0, p1, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardEnabled:Z

    if-eq v0, p2, :cond_f

    .line 333
    :cond_8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardAvailable:Z

    .line 334
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mHardKeyboardEnabled:Z

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->updateHardKeyboardSection()V

    .line 337
    :cond_f
    return-void
.end method

.method public setImeSwitchButton(Lcom/android/systemui/statusbar/tablet/InputMethodButton;)V
    .registers 2
    .parameter "imb"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    .line 321
    return-void
.end method

.method public setImeToken(Landroid/os/IBinder;)V
    .registers 2
    .parameter "token"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->mToken:Landroid/os/IBinder;

    .line 317
    return-void
.end method
