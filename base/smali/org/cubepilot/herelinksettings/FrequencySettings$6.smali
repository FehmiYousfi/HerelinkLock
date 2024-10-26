.class Lorg/cubepilot/herelinksettings/FrequencySettings$6;
.super Landroid/content/BroadcastReceiver;
.source "FrequencySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/FrequencySettings;
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

    .line 381
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$6;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "data"

    .line 384
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "QGC_CMD_FAIL"

    .line 390
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 391
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$6;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "Setting Failed"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const-string p2, "QGC_CMD_SUCCESS"

    .line 394
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 395
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$6;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "Setting Updated"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 399
    :cond_2
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$6;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-static {p2, p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$900(Lorg/cubepilot/herelinksettings/FrequencySettings;Ljava/lang/String;)V

    return-void
.end method
