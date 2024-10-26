.class public Lse/vidstige/jadb/JadbDevice;
.super Ljava/lang/Object;
.source "JadbDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/vidstige/jadb/JadbDevice$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_MODE:I = 0x1b4

.field private static final DEFAULT_TCPIP_PORT:I = 0x15b3


# instance fields
.field private final serial:Ljava/lang/String;

.field private final transportFactory:Lse/vidstige/jadb/ITransportFactory;


# direct methods
.method constructor <init>(Ljava/lang/String;Lse/vidstige/jadb/ITransportFactory;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lse/vidstige/jadb/JadbDevice;->serial:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lse/vidstige/jadb/JadbDevice;->transportFactory:Lse/vidstige/jadb/ITransportFactory;

    return-void
.end method

.method private constructor <init>(Lse/vidstige/jadb/ITransportFactory;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lse/vidstige/jadb/JadbDevice;->serial:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lse/vidstige/jadb/JadbDevice;->transportFactory:Lse/vidstige/jadb/ITransportFactory;

    return-void
.end method

.method private varargs buildCmdLine(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    const-string v3, " "

    .line 147
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {v2}, Lse/vidstige/jadb/managers/Bash;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertState(Ljava/lang/String;)Lse/vidstige/jadb/JadbDevice$State;
    .locals 1

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "authorizing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "unauthorized"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "sideload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "connecting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "recovery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "rescue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_6
    const-string v0, "device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_7
    const-string v0, "offline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "bootloader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 55
    sget-object p1, Lse/vidstige/jadb/JadbDevice$State;->Unknown:Lse/vidstige/jadb/JadbDevice$State;

    return-object p1

    .line 54
    :pswitch_0
    sget-object p1, Lse/vidstige/jadb/JadbDevice$State;->Rescue:Lse/vidstige/jadb/JadbDevice$State;

    return-object p1

    .line 53
    :pswitch_1
    sget-object p1, Lse/vidstige/jadb/JadbDevice$State;->Sideload:Lse/vidstige/jadb/JadbDevice$State;

    return-object p1

    .line 52
    :pswitch_2
    sget-object p1, Lse/vidstige/jadb/JadbDevice$State;->Connecting:Lse/vidstige/jadb/JadbDevice$State;

    return-object p1

    .line 51
    :pswitch_3
    sget-object p1, Lse/vidstige/jadb/JadbDevice$State;->Authorizing:Lse/vidstige/jadb/JadbDevice$State;

    return-object p1

    .line 50
    :pswitch_4
    sget-object p1, Lse/vidstige/jadb/JadbDevice$State;->Unauthorized:Lse/vidstige/jadb/JadbDevice$State;

    return-object p1

    .line 49
    :pswitch_5
    sget-object p1, Lse/vidstige/jadb/JadbDevice$State;->Recovery:Lse/vidstige/jadb/JadbDevice$State;

    return-object p1

    .line 48
    :pswitch_6
    sget-object p1, Lse/vidstige/jadb/JadbDevice$State;->BootLoader:Lse/vidstige/jadb/JadbDevice$State;

    return-object p1

    .line 47
    :pswitch_7
    sget-object p1, Lse/vidstige/jadb/JadbDevice$State;->Offline:Lse/vidstige/jadb/JadbDevice$State;

    return-object p1

    .line 46
    :pswitch_8
    sget-object p1, Lse/vidstige/jadb/JadbDevice$State;->Device:Lse/vidstige/jadb/JadbDevice$State;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70ac127b -> :sswitch_8
        -0x5c4df21d -> :sswitch_7
        -0x4f94e1aa -> :sswitch_6
        -0x37b27a6d -> :sswitch_5
        -0x2fa1806b -> :sswitch_4
        -0x2e3b8148 -> :sswitch_3
        0xcfc1ebd -> :sswitch_2
        0x250258f4 -> :sswitch_1
        0x2b11ce66 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static createAny(Lse/vidstige/jadb/JadbConnection;)Lse/vidstige/jadb/JadbDevice;
    .locals 1

    .line 36
    new-instance v0, Lse/vidstige/jadb/JadbDevice;

    invoke-direct {v0, p0}, Lse/vidstige/jadb/JadbDevice;-><init>(Lse/vidstige/jadb/ITransportFactory;)V

    return-object v0
.end method

.method private getTransport()Lse/vidstige/jadb/Transport;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lse/vidstige/jadb/JadbDevice;->transportFactory:Lse/vidstige/jadb/ITransportFactory;

    invoke-interface {v0}, Lse/vidstige/jadb/ITransportFactory;->createTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lse/vidstige/jadb/JadbDevice;->serial:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "host:transport-any"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host:transport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lse/vidstige/jadb/JadbDevice;->serial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lse/vidstige/jadb/JadbDevice;->send(Lse/vidstige/jadb/Transport;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lse/vidstige/jadb/JadbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 66
    :goto_1
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V

    .line 67
    throw v1
.end method

.method private send(Lse/vidstige/jadb/Transport;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 222
    invoke-virtual {p1, p2}, Lse/vidstige/jadb/Transport;->send(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lse/vidstige/jadb/Transport;->verifyResponse()V

    return-void
.end method


# virtual methods
.method public enableAdbOverTCP()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    const/16 v0, 0x15b3

    .line 159
    invoke-virtual {p0, v0}, Lse/vidstige/jadb/JadbDevice;->enableAdbOverTCP(I)V

    return-void
.end method

.method public enableAdbOverTCP(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Lse/vidstige/jadb/JadbDevice;->getTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    :try_start_0
    const-string v1, "tcpip:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lse/vidstige/jadb/JadbDevice;->send(Lse/vidstige/jadb/Transport;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 170
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 172
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

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 245
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 247
    :cond_2
    check-cast p1, Lse/vidstige/jadb/JadbDevice;

    .line 248
    iget-object v2, p0, Lse/vidstige/jadb/JadbDevice;->serial:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 249
    iget-object p1, p1, Lse/vidstige/jadb/JadbDevice;->serial:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 251
    :cond_4
    iget-object p1, p1, Lse/vidstige/jadb/JadbDevice;->serial:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lse/vidstige/jadb/JadbDevice;->getTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    .line 132
    invoke-direct {p0, p1, p2}, Lse/vidstige/jadb/JadbDevice;->buildCmdLine(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exec:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lse/vidstige/jadb/JadbDevice;->send(Lse/vidstige/jadb/Transport;Ljava/lang/String;)V

    .line 134
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1
.end method

.method public varargs executeShell(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lse/vidstige/jadb/JadbDevice;->getTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    .line 95
    invoke-direct {p0, p1, p2}, Lse/vidstige/jadb/JadbDevice;->buildCmdLine(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shell:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lse/vidstige/jadb/JadbDevice;->send(Lse/vidstige/jadb/Transport;Ljava/lang/String;)V

    .line 97
    new-instance p1, Lse/vidstige/jadb/AdbFilterInputStream;

    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Lse/vidstige/jadb/AdbFilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1
.end method

.method public varargs executeShell(Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    invoke-direct {p0}, Lse/vidstige/jadb/JadbDevice;->getTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    .line 108
    :try_start_0
    invoke-direct {p0, p2, p3}, Lse/vidstige/jadb/JadbDevice;->buildCmdLine(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shell:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lse/vidstige/jadb/JadbDevice;->send(Lse/vidstige/jadb/Transport;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V

    :cond_0
    return-void

    .line 113
    :cond_1
    :try_start_1
    new-instance p2, Lse/vidstige/jadb/AdbFilterOutputStream;

    invoke-direct {p2, p1}, Lse/vidstige/jadb/AdbFilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 114
    invoke-virtual {v0, p2}, Lse/vidstige/jadb/Transport;->readResponseTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 107
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_3

    .line 115
    :try_start_3
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p2
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lse/vidstige/jadb/JadbDevice;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lse/vidstige/jadb/JadbDevice$State;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lse/vidstige/jadb/JadbDevice;->transportFactory:Lse/vidstige/jadb/ITransportFactory;

    invoke-interface {v0}, Lse/vidstige/jadb/ITransportFactory;->createTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lse/vidstige/jadb/JadbDevice;->serial:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "host:get-state"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host-serial:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lse/vidstige/jadb/JadbDevice;->serial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":get-state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lse/vidstige/jadb/JadbDevice;->send(Lse/vidstige/jadb/Transport;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lse/vidstige/jadb/JadbDevice;->convertState(Ljava/lang/String;)Lse/vidstige/jadb/JadbDevice$State;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    .line 77
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 80
    :try_start_2
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public hashCode()I
    .locals 2

    .line 235
    iget-object v0, p0, Lse/vidstige/jadb/JadbDevice;->serial:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public list(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lse/vidstige/jadb/RemoteFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lse/vidstige/jadb/JadbDevice;->getTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    .line 177
    :try_start_0
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->startSync()Lse/vidstige/jadb/SyncTransport;

    move-result-object v1

    const-string v2, "LIST"

    .line 178
    invoke-virtual {v1, v2, p1}, Lse/vidstige/jadb/SyncTransport;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    :goto_0
    invoke-virtual {v1}, Lse/vidstige/jadb/SyncTransport;->readDirectoryEntry()Lse/vidstige/jadb/RemoteFileRecord;

    move-result-object v2

    sget-object v3, Lse/vidstige/jadb/RemoteFileRecord;->DONE:Lse/vidstige/jadb/RemoteFileRecord;

    if-eq v2, v3, :cond_0

    .line 182
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 176
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 185
    :try_start_2
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public pull(Lse/vidstige/jadb/RemoteFile;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 217
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lse/vidstige/jadb/JadbDevice;->pull(Lse/vidstige/jadb/RemoteFile;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 216
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 218
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
.end method

.method public pull(Lse/vidstige/jadb/RemoteFile;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lse/vidstige/jadb/JadbDevice;->getTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    .line 208
    :try_start_0
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->startSync()Lse/vidstige/jadb/SyncTransport;

    move-result-object v1

    const-string v2, "RECV"

    .line 209
    invoke-virtual {p1}, Lse/vidstige/jadb/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lse/vidstige/jadb/SyncTransport;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1, p2}, Lse/vidstige/jadb/SyncTransport;->readChunksTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 207
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 212
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
    throw p2
.end method

.method public push(Ljava/io/File;Lse/vidstige/jadb/RemoteFile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 201
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 202
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const/16 v4, 0x1b4

    move-object v0, p0

    move-object v1, v6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lse/vidstige/jadb/JadbDevice;->push(Ljava/io/InputStream;JILse/vidstige/jadb/RemoteFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 201
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 203
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
.end method

.method public push(Ljava/io/InputStream;JILse/vidstige/jadb/RemoteFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Lse/vidstige/jadb/JadbDevice;->getTransport()Lse/vidstige/jadb/Transport;

    move-result-object v0

    .line 190
    :try_start_0
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->startSync()Lse/vidstige/jadb/SyncTransport;

    move-result-object v1

    const-string v2, "SEND"

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lse/vidstige/jadb/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ","

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, v2, p4}, Lse/vidstige/jadb/SyncTransport;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, p1}, Lse/vidstige/jadb/SyncTransport;->sendStream(Ljava/io/InputStream;)V

    const-string p1, "DONE"

    long-to-int p2, p2

    .line 195
    invoke-virtual {v1, p1, p2}, Lse/vidstige/jadb/SyncTransport;->sendStatus(Ljava/lang/String;I)V

    .line 196
    invoke-virtual {v1}, Lse/vidstige/jadb/SyncTransport;->verifyStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 189
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 197
    :try_start_2
    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android Device with serial "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lse/vidstige/jadb/JadbDevice;->serial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
