.class Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$1;->this$0:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->onPackageChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->access$000(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;)V

    .line 60
    return-void
.end method
