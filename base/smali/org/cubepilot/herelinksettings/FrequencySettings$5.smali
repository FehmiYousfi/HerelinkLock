.class Lorg/cubepilot/herelinksettings/FrequencySettings$5;
.super Ljava/lang/Object;
.source "FrequencySettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 367
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$5;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 370
    check-cast p2, Lorg/cubepilot/herelinksettings/RadioStatService$LocalBinder;

    .line 371
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$5;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-virtual {p2}, Lorg/cubepilot/herelinksettings/RadioStatService$LocalBinder;->getService()Lorg/cubepilot/herelinksettings/RadioStatService;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$702(Lorg/cubepilot/herelinksettings/FrequencySettings;Lorg/cubepilot/herelinksettings/RadioStatService;)Lorg/cubepilot/herelinksettings/RadioStatService;

    .line 372
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$5;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$800(Lorg/cubepilot/herelinksettings/FrequencySettings;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 377
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/FrequencySettings$5;->this$0:Lorg/cubepilot/herelinksettings/FrequencySettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/cubepilot/herelinksettings/FrequencySettings;->access$702(Lorg/cubepilot/herelinksettings/FrequencySettings;Lorg/cubepilot/herelinksettings/RadioStatService;)Lorg/cubepilot/herelinksettings/RadioStatService;

    return-void
.end method
