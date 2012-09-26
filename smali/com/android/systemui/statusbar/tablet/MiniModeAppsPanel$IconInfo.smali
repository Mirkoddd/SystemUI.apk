.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconInfo"
.end annotation


# instance fields
.field ci:Landroid/content/pm/ComponentInfo;

.field iconLandscapeFocus:Landroid/graphics/drawable/Drawable;

.field iconLandscapeNormal:Landroid/graphics/drawable/Drawable;

.field iconPortraitFocus:Landroid/graphics/drawable/Drawable;

.field iconPortraitNormal:Landroid/graphics/drawable/Drawable;

.field mPreview:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V
    .registers 4
    .parameter
    .parameter "componentInfo"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->ci:Landroid/content/pm/ComponentInfo;

    .line 229
    const-string v0, "com.sec.minimode.icon.portrait.normal"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->loadIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->iconPortraitNormal:Landroid/graphics/drawable/Drawable;

    .line 230
    const-string v0, "com.sec.minimode.icon.portrait.focus"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->loadIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->iconPortraitFocus:Landroid/graphics/drawable/Drawable;

    .line 231
    const-string v0, "com.sec.minimode.icon.landscape.normal"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->loadIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->iconLandscapeNormal:Landroid/graphics/drawable/Drawable;

    .line 232
    const-string v0, "com.sec.minimode.icon.landscape.focus"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->loadIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->iconLandscapeFocus:Landroid/graphics/drawable/Drawable;

    .line 233
    const-string v0, "com.sec.minimode.icon.preview.normal"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->loadIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->mPreview:Landroid/graphics/drawable/Drawable;

    .line 234
    return-void
.end method

.method private getFullResDefaultServiceIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 271
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ComponentInfo;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .parameter "ci"

    .prologue
    .line 281
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_19

    move-result-object v2

    .line 285
    .local v2, resources:Landroid/content/res/Resources;
    :goto_c
    if-eqz v2, :cond_1c

    .line 286
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v1

    .line 287
    .local v1, iconId:I
    if-eqz v1, :cond_1c

    .line 288
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 291
    .end local v1           #iconId:I
    :goto_18
    return-object v3

    .line 282
    .end local v2           #resources:Landroid/content/res/Resources;
    :catch_19
    move-exception v0

    .line 283
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2       #resources:Landroid/content/res/Resources;
    goto :goto_c

    .line 291
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->getFullResDefaultServiceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_18
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIconDpi:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private loadIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "name"

    .prologue
    const/4 v4, -0x1

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->ci:Landroid/content/pm/ComponentInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->ci:Landroid/content/pm/ComponentInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 241
    .local v2, iconId:I
    :goto_10
    if-eq v2, v4, :cond_31

    .line 244
    :try_start_12
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->ci:Landroid/content/pm/ComponentInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1f} :catch_29

    move-result-object v3

    .line 248
    .local v3, resources:Landroid/content/res/Resources;
    :goto_20
    if-eqz v3, :cond_2c

    .line 249
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 257
    .end local v3           #resources:Landroid/content/res/Resources;
    :goto_26
    return-object v1

    .end local v2           #iconId:I
    :cond_27
    move v2, v4

    .line 238
    goto :goto_10

    .line 245
    .restart local v2       #iconId:I
    :catch_29
    move-exception v0

    .line 246
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3       #resources:Landroid/content/res/Resources;
    goto :goto_20

    .line 251
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->getFullResDefaultServiceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_26

    .line 254
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_31
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->ci:Landroid/content/pm/ComponentInfo;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->getFullResIcon(Landroid/content/pm/ComponentInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_26
.end method


# virtual methods
.method public getIcon(ZZ)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "isPortrait"
    .parameter "focus"

    .prologue
    .line 263
    if-eqz p1, :cond_a

    .line 264
    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->iconPortraitFocus:Landroid/graphics/drawable/Drawable;

    .line 267
    :goto_6
    return-object v0

    .line 264
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->iconPortraitNormal:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 267
    :cond_a
    if-eqz p2, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->iconLandscapeFocus:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;->iconLandscapeNormal:Landroid/graphics/drawable/Drawable;

    goto :goto_6
.end method
