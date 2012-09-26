.class Lcom/android/systemui/statusbar/policy/ToggleSlider$1;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_2c

    :cond_9
    move v1, v0

    .line 113
    :goto_a
    return v1

    .line 107
    :pswitch_b
    const/16 v2, 0x42

    if-ne p2, v2, :cond_9

    .line 108
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$000(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$000(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->isChecked()Z

    move-result v3

    if-nez v3, :cond_27

    move v0, v1

    :cond_27
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_a

    .line 105
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method
