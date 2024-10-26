.class Lorg/cubepilot/herelinksettings/RadioSettings$5;
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

    .line 187
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$5;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

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

    .line 190
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$5;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 194
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$5;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/cubepilot/herelinksettings/RadioStatService;->setVideoSharing(Z)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$5;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/cubepilot/herelinksettings/RadioStatService;->setVideoSharing(Z)V

    :goto_0
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

    .line 201
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$5;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$5;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getVideoSharing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$5;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$600(Lorg/cubepilot/herelinksettings/RadioSettings;)Landroid/widget/Spinner;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$5;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$600(Lorg/cubepilot/herelinksettings/RadioSettings;)Landroid/widget/Spinner;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_0
    return-void
.end method
