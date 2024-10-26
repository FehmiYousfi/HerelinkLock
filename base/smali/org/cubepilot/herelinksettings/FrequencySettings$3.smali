.class Lorg/cubepilot/herelinksettings/FrequencySettings$3;
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

    .line 156
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$3;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 159
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$3;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$300(Lorg/cubepilot/herelinksettings/FrequencySettings;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$3;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$302(Lorg/cubepilot/herelinksettings/FrequencySettings;Z)Z

    .line 163
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$3;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$400(Lorg/cubepilot/herelinksettings/FrequencySettings;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 164
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$3;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$500(Lorg/cubepilot/herelinksettings/FrequencySettings;IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 167
    :cond_1
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$3;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "QGCFREQSLCT:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$100(Lorg/cubepilot/herelinksettings/FrequencySettings;Ljava/lang/String;)V

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
