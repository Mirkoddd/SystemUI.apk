.class public Lcom/android/systemui/statusbar/DoNotDisturb;
.super Ljava/lang/Object;
.source "DoNotDisturb.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDoNotDisturb:Z

.field mPrefs:Landroid/content/SharedPreferences;

.field private mStatusBar:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    .line 39
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStatusBar:Landroid/app/StatusBarManager;

    .line 40
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mPrefs:Landroid/content/SharedPreferences;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "do_not_disturb"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDoNotDisturb:Z

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDisableRecord()V

    .line 44
    return-void
.end method

.method private updateDisableRecord()V
    .registers 4

    .prologue
    .line 56
    const/high16 v0, 0xe

    .line 59
    .local v0, disabled:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStatusBar:Landroid/app/StatusBarManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDoNotDisturb:Z

    if-eqz v2, :cond_c

    .end local v0           #disabled:I
    :goto_8
    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 60
    return-void

    .line 59
    .restart local v0       #disabled:I
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 47
    const-string v1, "do_not_disturb"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    .local v0, val:Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDoNotDisturb:Z

    if-eq v0, v1, :cond_10

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDoNotDisturb:Z

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDisableRecord()V

    .line 53
    :cond_10
    return-void
.end method
