.class Lorg/cubepilot/herelinksettings/MavlinkServer$2;
.super Ljava/lang/Object;
.source "MavlinkServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/MavlinkServer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final buf:[B

.field final synthetic this$0:Lorg/cubepilot/herelinksettings/MavlinkServer;

.field final synthetic val$in:Ljava/io/PipedInputStream;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/MavlinkServer;Ljava/io/PipedInputStream;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$2;->this$0:Lorg/cubepilot/herelinksettings/MavlinkServer;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$2;->val$in:Ljava/io/PipedInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1fa0

    new-array p1, p1, [B

    .line 110
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$2;->buf:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "MavlinkSend"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 115
    :goto_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$2;->this$0:Lorg/cubepilot/herelinksettings/MavlinkServer;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/MavlinkServer;->access$000(Lorg/cubepilot/herelinksettings/MavlinkServer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$2;->val$in:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$2;->val$in:Ljava/io/PipedInputStream;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$2;->buf:[B

    invoke-virtual {v0, v1}, Ljava/io/PipedInputStream;->read([B)I

    move-result v0

    .line 119
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$2;->this$0:Lorg/cubepilot/herelinksettings/MavlinkServer;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$2;->buf:[B

    invoke-virtual {v1, v2, v0}, Lorg/cubepilot/herelinksettings/MavlinkServer;->sendToAirUnit([BI)V

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x21

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 123
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
