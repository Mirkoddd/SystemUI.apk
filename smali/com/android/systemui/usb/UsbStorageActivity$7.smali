.class Lcom/android/systemui/usb/UsbStorageActivity$7;
.super Ljava/lang/Object;
.source "UsbStorageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbStorageActivity;->switchUsbMassStorage(Z)V
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
    .line 322
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$7;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 325
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$7;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    #getter for: Lcom/android/systemui/usb/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/systemui/usb/UsbStorageActivity;->access$700(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$7;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    #getter for: Lcom/android/systemui/usb/UsbStorageActivity;->mMountButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/systemui/usb/UsbStorageActivity;->access$800(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$7;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    #getter for: Lcom/android/systemui/usb/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/systemui/usb/UsbStorageActivity;->access$900(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 330
    return-void
.end method
