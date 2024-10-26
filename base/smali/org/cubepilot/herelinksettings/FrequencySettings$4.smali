.class Lorg/cubepilot/herelinksettings/FrequencySettings$4;
.super Ljava/lang/Object;
.source "FrequencySettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/FrequencySettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/FrequencySettings;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$4;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 206
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$4;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$600(Lorg/cubepilot/herelinksettings/FrequencySettings;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 207
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$4;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p3, "No Antenna selected"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 210
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$4;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$600(Lorg/cubepilot/herelinksettings/FrequencySettings;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, -0x1

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p4

    const p5, 0x1f51cf

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p4, p5, :cond_3

    const p5, 0x241427

    if-eq p4, p5, :cond_2

    const p2, 0x4b4d1fc

    if-eq p4, p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "Right"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p2, v1

    goto :goto_1

    :cond_2
    const-string p4, "Left"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_3
    const-string p2, "Auto"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    :goto_0
    move p2, p3

    :goto_1
    if-eqz p2, :cond_7

    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_5

    goto :goto_2

    .line 220
    :cond_5
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$4;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    const-string p2, "QGCTXANTCTRL:3"

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$100(Lorg/cubepilot/herelinksettings/FrequencySettings;Ljava/lang/String;)V

    goto :goto_2

    .line 217
    :cond_6
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$4;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    const-string p2, "QGCTXANTCTRL:2"

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$100(Lorg/cubepilot/herelinksettings/FrequencySettings;Ljava/lang/String;)V

    goto :goto_2

    .line 214
    :cond_7
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$4;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    const-string p2, "QGCTXANTCTRL:1"

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$100(Lorg/cubepilot/herelinksettings/FrequencySettings;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
