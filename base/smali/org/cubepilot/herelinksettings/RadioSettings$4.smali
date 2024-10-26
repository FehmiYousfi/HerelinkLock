.class Lorg/cubepilot/herelinksettings/RadioSettings$4;
.super Ljava/lang/Object;
.source "RadioSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/RadioSettings;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/RadioSettings;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/RadioSettings;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$4;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

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

    .line 172
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$4;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$4;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1, p3}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$500(Lorg/cubepilot/herelinksettings/RadioSettings;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 179
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$4;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$4;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getAuthCfg()I

    move-result p1

    .line 183
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings$4;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$300(Lorg/cubepilot/herelinksettings/RadioSettings;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
