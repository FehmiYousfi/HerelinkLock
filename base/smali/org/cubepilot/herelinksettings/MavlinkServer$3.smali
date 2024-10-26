.class Lorg/cubepilot/herelinksettings/MavlinkServer$3;
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

.field final synthetic val$out:Ljava/io/PipedOutputStream;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/MavlinkServer;Ljava/io/PipedOutputStream;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$3;->this$0:Lorg/cubepilot/herelinksettings/MavlinkServer;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$3;->val$out:Ljava/io/PipedOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1fa0

    new-array p1, p1, [B

    .line 131
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$3;->buf:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "MavlinkRX"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 136
    :goto_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$3;->this$0:Lorg/cubepilot/herelinksettings/MavlinkServer;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/MavlinkServer;->access$000(Lorg/cubepilot/herelinksettings/MavlinkServer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$3;->buf:[B

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$3;->buf:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 139
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$3;->this$0:Lorg/cubepilot/herelinksettings/MavlinkServer;

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/MavlinkServer;->access$100(Lorg/cubepilot/herelinksettings/MavlinkServer;)Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 140
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$3;->val$out:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/PipedOutputStream;->write([BII)V

    .line 143
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$3;->this$0:Lorg/cubepilot/herelinksettings/MavlinkServer;

    iget-object v1, v1, Lorg/cubepilot/herelinksettings/MavlinkServer;->dtlsClient:Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    .line 144
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    add-int/2addr v4, v5

    .line 143
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->send([B)V

    .line 146
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 147
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    .line 148
    new-instance v2, Ljava/net/DatagramPacket;

    iget-object v3, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$3;->buf:[B

    iget-object v4, p0, Lorg/cubepilot/herelinksettings/MavlinkServer$3;->buf:[B

    array-length v4, v4

    invoke-direct {v2, v3, v4, v1, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
