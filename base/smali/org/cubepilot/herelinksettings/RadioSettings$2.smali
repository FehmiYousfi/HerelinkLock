.class Lorg/cubepilot/herelinksettings/RadioSettings$2;
.super Ljava/lang/Object;
.source "RadioSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/RadioSettings;
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

    .line 120
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 125
    check-cast p2, Lorg/cubepilot/herelinksettings/RadioStatService$LocalBinder;

    .line 126
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-virtual {p2}, Lorg/cubepilot/herelinksettings/RadioStatService$LocalBinder;->getService()Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$002(Lorg/cubepilot/herelinksettings/RadioSettings;Lorg/cubepilot/herelinksettings/RadioStatService;)Lorg/cubepilot/herelinksettings/RadioStatService;

    .line 127
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$102(Lorg/cubepilot/herelinksettings/RadioSettings;Z)Z

    .line 128
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v0

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->setActivity(ILorg/cubepilot/herelinksettings/RadioSettings;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$202(Lorg/cubepilot/herelinksettings/RadioSettings;I)I

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->getAuthCfg()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "here"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$300(Lorg/cubepilot/herelinksettings/RadioSettings;)Landroid/widget/Spinner;

    move-result-object p1

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->getAuthCfg()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 133
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getAuthCfg()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 134
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$300(Lorg/cubepilot/herelinksettings/RadioSettings;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 137
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$100(Lorg/cubepilot/herelinksettings/RadioSettings;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p1

    iget p1, p1, Lorg/cubepilot/herelinksettings/RadioStatService;->srv_stat:I

    if-ne p1, p2, :cond_2

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "radiostat.srv_stat: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p2}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$000(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p2

    iget p2, p2, Lorg/cubepilot/herelinksettings/RadioStatService;->srv_stat:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HereLinkSetting"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$400(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioSettings;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, ""

    if-nez p1, :cond_1

    :try_start_1
    const-string p1, "instance is null"

    .line 141
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    new-instance p1, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$400(Lorg/cubepilot/herelinksettings/RadioSettings;)Lorg/cubepilot/herelinksettings/RadioSettings;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;-><init>(Landroidx/fragment/app/Fragment;)V

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$2;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/cubepilot/herelinksettings/RadioSettings;->access$102(Lorg/cubepilot/herelinksettings/RadioSettings;Z)Z

    return-void
.end method
