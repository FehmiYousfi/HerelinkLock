.class final Lorg/cubepilot/herelinksettings/AirUnit$3;
.super Ljava/lang/Object;
.source "AirUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/AirUnit;->CheckBaseBandVersion(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_context:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1148
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$3;->val$_context:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "QGCHOPCTRL:0"

    const-string v1, "QGCCFGBW:1,20"

    const-string v2, "QGCCFGBW:0,20"

    .line 1152
    :try_start_0
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lorg/cubepilot/herelinksettings/AirUnit$3$1;

    invoke-direct {v4, p0}, Lorg/cubepilot/herelinksettings/AirUnit$3$1;-><init>(Lorg/cubepilot/herelinksettings/AirUnit$3;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1165
    invoke-static {v2}, Lorg/cubepilot/herelinksettings/AirUnit;->access$300(Ljava/lang/String;)V

    const-wide/16 v3, 0x64

    .line 1166
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1167
    invoke-static {v2}, Lorg/cubepilot/herelinksettings/AirUnit;->access$300(Ljava/lang/String;)V

    .line 1168
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1169
    invoke-static {v1}, Lorg/cubepilot/herelinksettings/AirUnit;->access$300(Ljava/lang/String;)V

    .line 1170
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1171
    invoke-static {v1}, Lorg/cubepilot/herelinksettings/AirUnit;->access$300(Ljava/lang/String;)V

    .line 1172
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    const-wide/16 v1, 0xbb8

    .line 1173
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1174
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/AirUnit;->access$300(Ljava/lang/String;)V

    .line 1175
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1176
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/AirUnit;->access$300(Ljava/lang/String;)V

    .line 1177
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "QGCHOPSTATE"

    .line 1178
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/AirUnit;->access$300(Ljava/lang/String;)V

    const-string v0, "QGCCLBRSTATE"

    .line 1179
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/AirUnit;->access$300(Ljava/lang/String;)V

    const-string v0, "QGCULBWCFG"

    .line 1180
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/AirUnit;->access$300(Ljava/lang/String;)V

    const-string v0, "QGCDLBWCFG"

    .line 1181
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/AirUnit;->access$300(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
