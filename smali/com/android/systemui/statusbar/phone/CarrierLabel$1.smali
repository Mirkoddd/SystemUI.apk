.class Lcom/android/systemui/statusbar/phone/CarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 103
    const-string v3, "plmn"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, plmn:Ljava/lang/String;
    :try_start_13
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mDisplayPlmnIcon:Z
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_22} :catch_88

    .line 112
    :goto_22
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mDisplayPlmnIcon:Z

    if-eqz v3, :cond_39

    .line 113
    const-string v3, "CarrierLabel"

    const-string v4, "mDisplayPlmnIcon == true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v3, "isValidPlmn"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_39

    .line 115
    const/4 v2, 0x0

    .line 119
    :cond_39
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_54

    .line 120
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v4, "showSpn"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "spn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "showPlmn"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    #calls: Lcom/android/systemui/statusbar/phone/CarrierLabel;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$000(Lcom/android/systemui/statusbar/phone/CarrierLabel;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 126
    :cond_54
    const-string v3, "CarrierLabel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDisplayPlmnIcon =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mDisplayPlmnIcon:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v4, "showSpn"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "spn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "showPlmn"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 141
    .end local v2           #plmn:Ljava/lang/String;
    :cond_87
    :goto_87
    return-void

    .line 107
    .restart local v2       #plmn:Ljava/lang/String;
    :catch_88
    move-exception v1

    .line 108
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iput-boolean v7, v3, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mDisplayPlmnIcon:Z

    .line 109
    const-string v3, "CarrierLabel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDisplayPlmnIcon =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mDisplayPlmnIcon:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 132
    .end local v1           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #plmn:Ljava/lang/String;
    :cond_ab
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 134
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 136
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_87

    .line 137
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowSpn:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastSpn:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowPlmn:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastPlmn:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$400(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_87
.end method
