.class Lse/vidstige/jadb/server/AdbProtocolHandler;
.super Ljava/lang/Object;
.source "AdbProtocolHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final responder:Lse/vidstige/jadb/server/AdbResponder;

.field private selected:Lse/vidstige/jadb/server/AdbDeviceResponder;

.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lse/vidstige/jadb/server/AdbResponder;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->socket:Ljava/net/Socket;

    .line 19
    iput-object p2, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->responder:Lse/vidstige/jadb/server/AdbResponder;

    return-void
.end method

.method private findDevice(Ljava/lang/String;)Lse/vidstige/jadb/server/AdbDeviceResponder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->responder:Lse/vidstige/jadb/server/AdbResponder;

    invoke-interface {v0}, Lse/vidstige/jadb/server/AdbResponder;->getDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lse/vidstige/jadb/server/AdbDeviceResponder;

    .line 24
    invoke-interface {v1}, Lse/vidstige/jadb/server/AdbDeviceResponder;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 26
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not connected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCommandLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%04x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSyncTransport(Ljava/io/DataOutput;Ljava/io/DataInput;)Lse/vidstige/jadb/SyncTransport;
    .locals 1

    .line 244
    new-instance v0, Lse/vidstige/jadb/SyncTransport;

    invoke-direct {v0, p1, p2}, Lse/vidstige/jadb/SyncTransport;-><init>(Ljava/io/DataOutput;Ljava/io/DataInput;)V

    return-object v0
.end method

.method private handleTcpip(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "OKAY"

    .line 87
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->selected:Lse/vidstige/jadb/server/AdbDeviceResponder;

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lse/vidstige/jadb/server/AdbDeviceResponder;->enableIpCommand(Ljava/lang/String;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method private hostDevices(Ljava/io/DataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    iget-object v2, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->responder:Lse/vidstige/jadb/server/AdbResponder;

    invoke-interface {v2}, Lse/vidstige/jadb/server/AdbResponder;->getDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lse/vidstige/jadb/server/AdbDeviceResponder;

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lse/vidstige/jadb/server/AdbDeviceResponder;->getSerial()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lse/vidstige/jadb/server/AdbDeviceResponder;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "OKAY"

    .line 138
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, p1, v1}, Lse/vidstige/jadb/server/AdbProtocolHandler;->send(Ljava/io/DataOutput;Ljava/lang/String;)V

    return-void
.end method

.method private hostGetState(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->responder:Lse/vidstige/jadb/server/AdbResponder;

    invoke-interface {v0}, Lse/vidstige/jadb/server/AdbResponder;->getDevices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/vidstige/jadb/server/AdbDeviceResponder;

    const-string v1, "OKAY"

    .line 116
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    .line 117
    invoke-interface {v0}, Lse/vidstige/jadb/server/AdbDeviceResponder;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lse/vidstige/jadb/server/AdbProtocolHandler;->send(Ljava/io/DataOutput;Ljava/lang/String;)V

    return-void
.end method

.method private hostSerial(Ljava/io/DataOutput;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, ":"

    .line 92
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 93
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const/4 p2, 0x1

    .line 97
    aget-object v1, v1, p2

    const-string v2, "OKAY"

    .line 99
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->responder:Lse/vidstige/jadb/server/AdbResponder;

    invoke-interface {v2}, Lse/vidstige/jadb/server/AdbResponder;->getDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lse/vidstige/jadb/server/AdbDeviceResponder;

    .line 101
    invoke-interface {v3}, Lse/vidstige/jadb/server/AdbDeviceResponder;->getSerial()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-interface {v3}, Lse/vidstige/jadb/server/AdbDeviceResponder;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lse/vidstige/jadb/server/AdbProtocolHandler;->send(Ljava/io/DataOutput;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-nez p2, :cond_2

    const-string p2, "unknown"

    .line 109
    invoke-direct {p0, p1, p2}, Lse/vidstige/jadb/server/AdbProtocolHandler;->send(Ljava/io/DataOutput;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 94
    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private hostTransport(Ljava/io/DataOutput;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 127
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-direct {p0, p2}, Lse/vidstige/jadb/server/AdbProtocolHandler;->findDevice(Ljava/lang/String;)Lse/vidstige/jadb/server/AdbDeviceResponder;

    move-result-object p2

    iput-object p2, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->selected:Lse/vidstige/jadb/server/AdbDeviceResponder;

    const-string p2, "OKAY"

    .line 129
    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private hostTransportAny(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->responder:Lse/vidstige/jadb/server/AdbResponder;

    invoke-interface {v0}, Lse/vidstige/jadb/server/AdbResponder;->getDevices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/vidstige/jadb/server/AdbDeviceResponder;

    iput-object v0, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->selected:Lse/vidstige/jadb/server/AdbDeviceResponder;

    const-string v0, "OKAY"

    .line 145
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private hostVersion(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "OKAY"

    .line 149
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->responder:Lse/vidstige/jadb/server/AdbResponder;

    invoke-interface {v1}, Lse/vidstige/jadb/server/AdbResponder;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%04x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lse/vidstige/jadb/server/AdbProtocolHandler;->send(Ljava/io/DataOutput;Ljava/lang/String;)V

    return-void
.end method

.method private processCommand(Ljava/io/DataInput;Ljava/io/DataOutputStream;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lse/vidstige/jadb/server/AdbProtocolHandler;->readCommand(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->responder:Lse/vidstige/jadb/server/AdbResponder;

    invoke-interface {v1, v0}, Lse/vidstige/jadb/server/AdbResponder;->onCommand(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "host:version"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-direct {p0, p2}, Lse/vidstige/jadb/server/AdbProtocolHandler;->hostVersion(Ljava/io/DataOutput;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "host:transport-any"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-direct {p0, p2}, Lse/vidstige/jadb/server/AdbProtocolHandler;->hostTransportAny(Ljava/io/DataOutput;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "host:devices"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-direct {p0, p2}, Lse/vidstige/jadb/server/AdbProtocolHandler;->hostDevices(Ljava/io/DataOutput;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "host:transport:"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-direct {p0, p2, v0}, Lse/vidstige/jadb/server/AdbProtocolHandler;->hostTransport(Ljava/io/DataOutput;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "sync:"

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    invoke-direct {p0, p2, p1}, Lse/vidstige/jadb/server/AdbProtocolHandler;->sync(Ljava/io/DataOutput;Ljava/io/DataInput;)V

    goto :goto_0

    :cond_4
    const-string v1, "shell:"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lse/vidstige/jadb/server/AdbProtocolHandler;->shell(Ljava/io/DataInput;Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_5
    const-string p1, "host:get-state"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 70
    invoke-direct {p0, p2}, Lse/vidstige/jadb/server/AdbProtocolHandler;->hostGetState(Ljava/io/DataOutput;)V

    goto :goto_0

    :cond_6
    const-string p1, "host-serial:"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 72
    invoke-direct {p0, p2, v0}, Lse/vidstige/jadb/server/AdbProtocolHandler;->hostSerial(Ljava/io/DataOutput;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string p1, "tcpip:"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 74
    invoke-direct {p0, p2, v0}, Lse/vidstige/jadb/server/AdbProtocolHandler;->handleTcpip(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_8
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "FAIL"

    .line 79
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lse/vidstige/jadb/server/AdbProtocolHandler;->send(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 82
    :goto_0
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    const/4 p1, 0x1

    return p1
.end method

.method private readCommand(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1}, Lse/vidstige/jadb/server/AdbProtocolHandler;->readHexInt(Ljava/io/DataInput;)I

    move-result v0

    .line 173
    invoke-direct {p0, p1, v0}, Lse/vidstige/jadb/server/AdbProtocolHandler;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readHexInt(Ljava/io/DataInput;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 162
    invoke-direct {p0, p1, v0}, Lse/vidstige/jadb/server/AdbProtocolHandler;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private readInt(Ljava/io/DataInput;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    return p1
.end method

.method private readString(Ljava/io/DataInput;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    new-array p2, p2, [B

    .line 167
    invoke-interface {p1, p2}, Ljava/io/DataInput;->readFully([B)V

    .line 168
    new-instance p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method private runServer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 45
    :goto_0
    :try_start_1
    invoke-direct {p0, v0, v1}, Lse/vidstige/jadb/server/AdbProtocolHandler;->processCommand(Ljava/io/DataInput;Ljava/io/DataOutputStream;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void

    :catchall_0
    move-exception v2

    .line 40
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    .line 48
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    .line 40
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v2

    .line 48
    :try_start_7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
.end method

.method private send(Ljava/io/DataOutput;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-direct {p0, p2}, Lse/vidstige/jadb/server/AdbProtocolHandler;->getCommandLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    .line 240
    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private shell(Ljava/io/DataInput;Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 121
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "OKAY"

    .line 122
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p3, p2, p1}, Lse/vidstige/jadb/server/AdbProtocolHandler;->shell(Ljava/lang/String;Ljava/io/DataOutputStream;Ljava/io/DataInput;)V

    return-void
.end method

.method private shell(Ljava/lang/String;Ljava/io/DataOutputStream;Ljava/io/DataInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->selected:Lse/vidstige/jadb/server/AdbDeviceResponder;

    invoke-interface {v0, p1, p2, p3}, Lse/vidstige/jadb/server/AdbDeviceResponder;->shell(Ljava/lang/String;Ljava/io/DataOutputStream;Ljava/io/DataInput;)V

    return-void
.end method

.method private sync(Ljava/io/DataOutput;Ljava/io/DataInput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "OKAY"

    .line 177
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 179
    :try_start_0
    invoke-direct {p0, p2, v0}, Lse/vidstige/jadb/server/AdbProtocolHandler;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-direct {p0, p2}, Lse/vidstige/jadb/server/AdbProtocolHandler;->readInt(Ljava/io/DataInput;)I

    move-result v1

    const/4 v2, -0x1

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x23a89e

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x2651e6

    if-eq v3, v4, :cond_1

    const v4, 0x26c788

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "SEND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "RECV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v6

    goto :goto_0

    :cond_2
    const-string v3, "LIST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v5

    :cond_3
    :goto_0
    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_5

    if-ne v2, v5, :cond_4

    .line 189
    invoke-direct {p0, p1, p2, v1}, Lse/vidstige/jadb/server/AdbProtocolHandler;->syncList(Ljava/io/DataOutput;Ljava/io/DataInput;I)V

    goto :goto_1

    .line 192
    :cond_4
    new-instance v1, Lse/vidstige/jadb/JadbException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lse/vidstige/jadb/JadbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_5
    invoke-direct {p0, p1, p2, v1}, Lse/vidstige/jadb/server/AdbProtocolHandler;->syncRecv(Ljava/io/DataOutput;Ljava/io/DataInput;I)V

    goto :goto_1

    .line 183
    :cond_6
    invoke-direct {p0, p1, p2, v1}, Lse/vidstige/jadb/server/AdbProtocolHandler;->syncSend(Ljava/io/DataOutput;Ljava/io/DataInput;I)V
    :try_end_0
    .catch Lse/vidstige/jadb/JadbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 195
    invoke-direct {p0, p1, p2}, Lse/vidstige/jadb/server/AdbProtocolHandler;->getSyncTransport(Ljava/io/DataOutput;Ljava/io/DataInput;)Lse/vidstige/jadb/SyncTransport;

    move-result-object p1

    .line 196
    invoke-virtual {v0}, Lse/vidstige/jadb/JadbException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FAIL"

    invoke-virtual {p1, v0, p2}, Lse/vidstige/jadb/SyncTransport;->send(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private syncList(Ljava/io/DataOutput;Ljava/io/DataInput;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 226
    invoke-direct {p0, p2, p3}, Lse/vidstige/jadb/server/AdbProtocolHandler;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object p3

    .line 227
    invoke-direct {p0, p1, p2}, Lse/vidstige/jadb/server/AdbProtocolHandler;->getSyncTransport(Ljava/io/DataOutput;Ljava/io/DataInput;)Lse/vidstige/jadb/SyncTransport;

    move-result-object p1

    .line 228
    iget-object p2, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->selected:Lse/vidstige/jadb/server/AdbDeviceResponder;

    invoke-interface {p2, p3}, Lse/vidstige/jadb/server/AdbDeviceResponder;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lse/vidstige/jadb/RemoteFile;

    .line 229
    invoke-virtual {p1, p3}, Lse/vidstige/jadb/SyncTransport;->sendDirectoryEntry(Lse/vidstige/jadb/RemoteFile;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p1}, Lse/vidstige/jadb/SyncTransport;->sendDirectoryEntryDone()V

    return-void
.end method

.method private syncRecv(Ljava/io/DataOutput;Ljava/io/DataInput;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 201
    invoke-direct {p0, p2, p3}, Lse/vidstige/jadb/server/AdbProtocolHandler;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object p3

    .line 202
    invoke-direct {p0, p1, p2}, Lse/vidstige/jadb/server/AdbProtocolHandler;->getSyncTransport(Ljava/io/DataOutput;Ljava/io/DataInput;)Lse/vidstige/jadb/SyncTransport;

    move-result-object p1

    .line 203
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    iget-object v0, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->selected:Lse/vidstige/jadb/server/AdbDeviceResponder;

    new-instance v1, Lse/vidstige/jadb/RemoteFile;

    invoke-direct {v1, p3}, Lse/vidstige/jadb/RemoteFile;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Lse/vidstige/jadb/server/AdbDeviceResponder;->filePulled(Lse/vidstige/jadb/RemoteFile;Ljava/io/ByteArrayOutputStream;)V

    .line 205
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, p3}, Lse/vidstige/jadb/SyncTransport;->sendStream(Ljava/io/InputStream;)V

    const-string p2, "DONE"

    const/4 p3, 0x0

    .line 206
    invoke-virtual {p1, p2, p3}, Lse/vidstige/jadb/SyncTransport;->sendStatus(Ljava/lang/String;I)V

    return-void
.end method

.method private syncSend(Ljava/io/DataOutput;Ljava/io/DataInput;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 210
    invoke-direct {p0, p2, p3}, Lse/vidstige/jadb/server/AdbProtocolHandler;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x2c

    .line 211
    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 215
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 216
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    move v0, p3

    move-object p3, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b6

    .line 218
    :goto_0
    invoke-direct {p0, p1, p2}, Lse/vidstige/jadb/server/AdbProtocolHandler;->getSyncTransport(Ljava/io/DataOutput;Ljava/io/DataInput;)Lse/vidstige/jadb/SyncTransport;

    move-result-object p1

    .line 219
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    invoke-virtual {p1, p2}, Lse/vidstige/jadb/SyncTransport;->readChunksTo(Ljava/io/OutputStream;)V

    .line 221
    iget-object v2, p0, Lse/vidstige/jadb/server/AdbProtocolHandler;->selected:Lse/vidstige/jadb/server/AdbDeviceResponder;

    new-instance v3, Lse/vidstige/jadb/RemoteFile;

    invoke-direct {v3, p3}, Lse/vidstige/jadb/RemoteFile;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v0, p2}, Lse/vidstige/jadb/server/AdbDeviceResponder;->filePushed(Lse/vidstige/jadb/RemoteFile;ILjava/io/ByteArrayOutputStream;)V

    const-string p2, "OKAY"

    .line 222
    invoke-virtual {p1, p2, v1}, Lse/vidstige/jadb/SyncTransport;->sendStatus(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 32
    :try_start_0
    invoke-direct {p0}, Lse/vidstige/jadb/server/AdbProtocolHandler;->runServer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
