.class Lorg/cubepilot/herelinksettings/JoystickCalibrator$1;
.super Ljava/lang/Object;
.source "JoystickCalibrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/JoystickCalibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/JoystickCalibrator;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/JoystickCalibrator;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator$1;->this$0:Lorg/cubepilot/herelinksettings/JoystickCalibrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 55
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator$1;->this$0:Lorg/cubepilot/herelinksettings/JoystickCalibrator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->access$002(Lorg/cubepilot/herelinksettings/JoystickCalibrator;Z)Z

    .line 56
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator$1;->this$0:Lorg/cubepilot/herelinksettings/JoystickCalibrator;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->access$100(Lorg/cubepilot/herelinksettings/JoystickCalibrator;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 57
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator$1;->this$0:Lorg/cubepilot/herelinksettings/JoystickCalibrator;

    invoke-static {v2}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->access$200(Lorg/cubepilot/herelinksettings/JoystickCalibrator;)[I

    move-result-object v2

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 58
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator$1;->this$0:Lorg/cubepilot/herelinksettings/JoystickCalibrator;

    invoke-static {v0, v3}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->access$302(Lorg/cubepilot/herelinksettings/JoystickCalibrator;Z)Z

    .line 59
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickCalibrator$1;->this$0:Lorg/cubepilot/herelinksettings/JoystickCalibrator;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->access$100(Lorg/cubepilot/herelinksettings/JoystickCalibrator;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->access$400(Lorg/cubepilot/herelinksettings/JoystickCalibrator;I)V

    return-void
.end method
