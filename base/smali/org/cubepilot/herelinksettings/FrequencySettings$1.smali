.class Lorg/cubepilot/herelinksettings/FrequencySettings$1;
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

.field final synthetic val$dlValueOptions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/FrequencySettings;[Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$1;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$1;->val$dlValueOptions:[Ljava/lang/String;

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

    .line 107
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$1;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$000(Lorg/cubepilot/herelinksettings/FrequencySettings;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$1;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$002(Lorg/cubepilot/herelinksettings/FrequencySettings;Z)Z

    .line 112
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$1;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "QGCCFGBW:0,"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$1;->val$dlValueOptions:[Ljava/lang/String;

    aget-object p3, p4, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$100(Lorg/cubepilot/herelinksettings/FrequencySettings;Ljava/lang/String;)V

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
