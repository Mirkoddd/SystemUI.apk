.class Lcom/android/systemui/usb/UsbStorageActivity$5;
.super Ljava/lang/Object;
.source "UsbStorageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbStorageActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbStorageActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbStorageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$5;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$5;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->access$500(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    .line 291
    return-void
.end method
