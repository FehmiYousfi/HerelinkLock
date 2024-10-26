.class public Lse/vidstige/jadb/JadbConnection;
.super Ljava/lang/Object;
.source "JadbConnection.java"

# interfaces
.implements Lse/vidstige/jadb/ITransportFactory;


# static fields
.field private static final DEFAULTPORT:I = 0x13ad


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "localhost"

    const/16 v1, 0x13ad

    .line 18
    invoke-direct {p0, v0, v1}, Lse/vidstige/jadb/JadbConnection;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lse/vidstige/jadb/JadbConnection;->host:Ljava/lang/String;

    .line 23
    iput p2, p0, Lse/vidstige/jadb/JadbConnection;->port:I

    return-void
.end method


# virtual methods
.method public connectToTcpDevice(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;,
            Lse/vidstige/jadb/ConnectionToRemoteDeviceException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lse/vidstige/jadb/JadbConnection;->createTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    .line 41
    :try_start_0
    new-instance v1, Lse/vidstige/jadb/HostConnectToRemoteTcpDevice;

    invoke-direct {v1, v0}, Lse/vidstige/jadb/HostConnectToRemoteTcpDevice;-><init>(Lse/vidstige/jadb/Transport;)V

    invoke-virtual {v1, p1}, Lse/vidstige/jadb/HostConnectToRemoteTcpDevice;->connect(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 40
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 42
    :try_start_2
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public createDeviceWatcher(Lse/vidstige/jadb/DeviceDetectionListener;)Lse/vidstige/jadb/DeviceWatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lse/vidstige/jadb/JadbConnection;->createTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    const-string v1, "host:track-devices"

    .line 63
    invoke-virtual {v0, v1}, Lse/vidstige/jadb/Transport;->send(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->verifyResponse()V

    .line 65
    new-instance v1, Lse/vidstige/jadb/DeviceWatcher;

    invoke-direct {v1, v0, p1, p0}, Lse/vidstige/jadb/DeviceWatcher;-><init>(Lse/vidstige/jadb/Transport;Lse/vidstige/jadb/DeviceDetectionListener;Lse/vidstige/jadb/JadbConnection;)V

    return-object v1
.end method

.method public createTransport()Lse/vidstige/jadb/Transport;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    new-instance v0, Lse/vidstige/jadb/Transport;

    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lse/vidstige/jadb/JadbConnection;->host:Ljava/lang/String;

    iget v3, p0, Lse/vidstige/jadb/JadbConnection;->port:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lse/vidstige/jadb/Transport;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

.method public disconnectFromTcpDevice(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;,
            Lse/vidstige/jadb/ConnectionToRemoteDeviceException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lse/vidstige/jadb/JadbConnection;->createTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    .line 48
    :try_start_0
    new-instance v1, Lse/vidstige/jadb/HostDisconnectFromRemoteTcpDevice;

    invoke-direct {v1, v0}, Lse/vidstige/jadb/HostDisconnectFromRemoteTcpDevice;-><init>(Lse/vidstige/jadb/Transport;)V

    invoke-virtual {v1, p1}, Lse/vidstige/jadb/HostDisconnectFromRemoteTcpDevice;->disconnect(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 47
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 49
    :try_start_2
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public getAnyDevice()Lse/vidstige/jadb/JadbDevice;
    .locals 1

    .line 81
    invoke-static {p0}, Lse/vidstige/jadb/JadbDevice;->createAny(Lse/vidstige/jadb/JadbConnection;)Lse/vidstige/jadb/JadbDevice;

    move-result-object v0

    return-object v0
.end method

.method public getDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lse/vidstige/jadb/JadbDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lse/vidstige/jadb/JadbConnection;->createTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    :try_start_0
    const-string v1, "host:devices"

    .line 54
    invoke-virtual {v0, v1}, Lse/vidstige/jadb/Transport;->send(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->verifyResponse()V

    .line 56
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p0, v1}, Lse/vidstige/jadb/JadbConnection;->parseDevices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 53
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 58
    :try_start_2
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public getHostVersion()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lse/vidstige/jadb/JadbConnection;->createTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    :try_start_0
    const-string v1, "host:version"

    .line 32
    invoke-virtual {v0, v1}, Lse/vidstige/jadb/Transport;->send(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->verifyResponse()V

    .line 34
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->readString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 31
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 35
    :try_start_2
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public parseDevices(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lse/vidstige/jadb/JadbDevice;",
            ">;"
        }
    .end annotation

    const-string v0, "\n"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const-string v5, "\t"

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 73
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 74
    new-instance v5, Lse/vidstige/jadb/JadbDevice;

    aget-object v4, v4, v2

    invoke-direct {v5, v4, p0}, Lse/vidstige/jadb/JadbDevice;-><init>(Ljava/lang/String;Lse/vidstige/jadb/ITransportFactory;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
