.class Lorg/cubepilot/herelinksettings/JoystickSettings$4;
.super Ljava/util/TimerTask;
.source "JoystickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/JoystickSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$4;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 264
    :try_start_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$4;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->access$000(Lorg/cubepilot/herelinksettings/JoystickSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
