.class public Lse/vidstige/jadb/HostConnectionCommand;
.super Ljava/lang/Object;
.source "HostConnectionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/vidstige/jadb/HostConnectionCommand$ResponseValidatorBase;,
        Lse/vidstige/jadb/HostConnectionCommand$ResponseValidator;
    }
.end annotation


# instance fields
.field private final responseValidator:Lse/vidstige/jadb/HostConnectionCommand$ResponseValidator;

.field private final transport:Lse/vidstige/jadb/Transport;


# direct methods
.method constructor <init>(Lse/vidstige/jadb/Transport;Lse/vidstige/jadb/HostConnectionCommand$ResponseValidator;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lse/vidstige/jadb/HostConnectionCommand;->transport:Lse/vidstige/jadb/Transport;

    .line 12
    iput-object p2, p0, Lse/vidstige/jadb/HostConnectionCommand;->responseValidator:Lse/vidstige/jadb/HostConnectionCommand$ResponseValidator;

    return-void
.end method

.method private verifyProtocolLevel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/ConnectionToRemoteDeviceException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lse/vidstige/jadb/HostConnectionCommand;->transport:Lse/vidstige/jadb/Transport;

    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->readString()Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lse/vidstige/jadb/HostConnectionCommand;->responseValidator:Lse/vidstige/jadb/HostConnectionCommand$ResponseValidator;

    invoke-interface {v1, v0}, Lse/vidstige/jadb/HostConnectionCommand$ResponseValidator;->validate(Ljava/lang/String;)V

    return-void
.end method

.method private verifyTransportLevel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lse/vidstige/jadb/HostConnectionCommand;->transport:Lse/vidstige/jadb/Transport;

    invoke-virtual {v0}, Lse/vidstige/jadb/Transport;->verifyResponse()V

    return-void
.end method


# virtual methods
.method executeHostCommand(Ljava/lang/String;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;,
            Lse/vidstige/jadb/ConnectionToRemoteDeviceException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lse/vidstige/jadb/HostConnectionCommand;->transport:Lse/vidstige/jadb/Transport;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "host:%s:%s:%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lse/vidstige/jadb/Transport;->send(Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lse/vidstige/jadb/HostConnectionCommand;->verifyTransportLevel()V

    .line 19
    invoke-direct {p0}, Lse/vidstige/jadb/HostConnectionCommand;->verifyProtocolLevel()V

    return-object p2
.end method
