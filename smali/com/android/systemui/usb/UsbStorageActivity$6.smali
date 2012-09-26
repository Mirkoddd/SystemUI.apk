.class Lcom/android/systemui/usb/UsbStorageActivity$6;
.super Ljava/lang/Object;
.source "UsbStorageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbStorageActivity;->scheduleShowDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbStorageActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbStorageActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    iput p2, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    #getter for: Lcom/android/systemui/usb/UsbStorageActivity;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/systemui/usb/UsbStorageActivity;->access$600(Lcom/android/systemui/usb/UsbStorageActivity;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 313
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    iget v1, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->val$id:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->removeDialog(I)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    iget v1, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->val$id:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->showDialog(I)V

    .line 316
    :cond_16
    return-void
.end method
