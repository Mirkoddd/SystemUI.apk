.class public Lcom/android/systemui/statusbar/policy/DoNotDisturbController;
.super Ljava/lang/Object;
.source "DoNotDisturbController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.DoNotDisturbController"


# instance fields
.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;

.field private mDoNotDisturb:Z

.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V
    .registers 6
    .parameter "context"
    .parameter "checkbox"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 38
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "do_not_disturb"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    .line 40
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mCheckBox:Landroid/widget/CompoundButton;

    .line 41
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-nez v1, :cond_25

    const/4 v0, 0x1

    :cond_25
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 50
    if-nez p2, :cond_16

    const/4 v1, 0x1

    .line 51
    .local v1, value:Z
    :goto_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eq v1, v2, :cond_15

    .line 52
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "do_not_disturb"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_15
    return-void

    .line 50
    .end local v1           #value:Z
    :cond_16
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .parameter "prefs"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v2, "do_not_disturb"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 61
    .local v0, val:Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eq v0, v2, :cond_15

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    .line 63
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mCheckBox:Landroid/widget/CompoundButton;

    if-nez v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 65
    :cond_15
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 69
    return-void
.end method
