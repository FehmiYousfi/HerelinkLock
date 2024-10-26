.class public Lorg/cubepilot/herelinksettings/MavlinkServer;
.super Ljava/lang/Object;
.source "MavlinkServer.java"


# static fields
.field private static final BufSize:I = 0x1fa0

.field static final TAG:Ljava/lang/String; = "HerelinkSettings.MavlinkServer"

.field public static connection:Lio/dronefleet/mavlink/MavlinkConnection;


# instance fields
.field addr:Ljava/net/InetAddress;

.field public dtlsClient:Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;

.field private running:Z

.field private socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;-><init>(Lorg/cubepilot/herelinksettings/MavlinkServer;)V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/MavlinkServer;->dtlsClient:Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;

    :try_start_0
    const-string v0, "127.0.0.1"

    .line 37
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/MavlinkServer;->addr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 42
    :goto_0
    :try_start_1
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/MavlinkServer;->socket:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lorg/cubepilot/herelinksettings/MavlinkServer;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lorg/cubepilot/herelinksettings/MavlinkServer;->running:Z

    return p0
.end method

.method static synthetic access$100(Lorg/cubepilot/herelinksettings/MavlinkServer;)Ljava/net/DatagramSocket;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/MavlinkServer;->socket:Ljava/net/DatagramSocket;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 49
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/MavlinkServer;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/MavlinkServer;->running:Z

    .line 53
    new-instance v0, Ljava/io/PipedInputStream;

    invoke-direct {v0}, Ljava/io/PipedInputStream;-><init>()V

    .line 54
    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1}, Ljava/io/PipedOutputStream;-><init>()V

    .line 56
    new-instance v2, Ljava/io/PipedInputStream;

    invoke-direct {v2}, Ljava/io/PipedInputStream;-><init>()V

    .line 57
    new-instance v3, Ljava/io/PipedOutputStream;

    invoke-direct {v3}, Ljava/io/PipedOutputStream;-><init>()V

    .line 60
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    .line 61
    invoke-virtual {v1, v2}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 63
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    :goto_0
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/MavlinkConnection;->create(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/dronefleet/mavlink/MavlinkConnection;

    move-result-object v0

    sput-object v0, Lorg/cubepilot/herelinksettings/MavlinkServer;->connection:Lio/dronefleet/mavlink/MavlinkConnection;

    .line 70
    new-instance v0, Lorg/cubepilot/herelinksettings/MavlinkReader;

    sget-object v1, Lorg/cubepilot/herelinksettings/MavlinkServer;->connection:Lio/dronefleet/mavlink/MavlinkConnection;

    invoke-direct {v0, v1}, Lorg/cubepilot/herelinksettings/MavlinkReader;-><init>(Lio/dronefleet/mavlink/MavlinkConnection;)V

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/MavlinkReader;->start()V

    const-string v0, "HerelinkSettings.MavlinkServer"

    const-string v1, "MavlinkReader started"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cubepilot/herelinksettings/MavlinkServer$1;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/MavlinkServer$1;-><init>(Lorg/cubepilot/herelinksettings/MavlinkServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cubepilot/herelinksettings/MavlinkServer$2;

    invoke-direct {v1, p0, v2}, Lorg/cubepilot/herelinksettings/MavlinkServer$2;-><init>(Lorg/cubepilot/herelinksettings/MavlinkServer;Ljava/io/PipedInputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 130
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cubepilot/herelinksettings/MavlinkServer$3;

    invoke-direct {v1, p0, v3}, Lorg/cubepilot/herelinksettings/MavlinkServer$3;-><init>(Lorg/cubepilot/herelinksettings/MavlinkServer;Ljava/io/PipedOutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public sendToAirUnit([BI)V
    .locals 3

    .line 162
    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/MavlinkServer;->addr:Ljava/net/InetAddress;

    const/16 v2, 0x38d9

    invoke-direct {v0, p1, p2, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 163
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/MavlinkServer;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
