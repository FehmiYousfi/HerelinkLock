.class Lse/vidstige/jadb/HostConnectToRemoteTcpDevice;
.super Lse/vidstige/jadb/HostConnectionCommand;
.source "HostConnectToRemoteTcpDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/vidstige/jadb/HostConnectToRemoteTcpDevice$ResponseValidatorImp;
    }
.end annotation


# direct methods
.method constructor <init>(Lse/vidstige/jadb/Transport;)V
    .locals 1

    .line 8
    new-instance v0, Lse/vidstige/jadb/HostConnectToRemoteTcpDevice$ResponseValidatorImp;

    invoke-direct {v0}, Lse/vidstige/jadb/HostConnectToRemoteTcpDevice$ResponseValidatorImp;-><init>()V

    invoke-direct {p0, p1, v0}, Lse/vidstige/jadb/HostConnectionCommand;-><init>(Lse/vidstige/jadb/Transport;Lse/vidstige/jadb/HostConnectionCommand$ResponseValidator;)V

    return-void
.end method

.method constructor <init>(Lse/vidstige/jadb/Transport;Lse/vidstige/jadb/HostConnectionCommand$ResponseValidator;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lse/vidstige/jadb/HostConnectionCommand;-><init>(Lse/vidstige/jadb/Transport;Lse/vidstige/jadb/HostConnectionCommand$ResponseValidator;)V

    return-void
.end method


# virtual methods
.method connect(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;,
            Lse/vidstige/jadb/ConnectionToRemoteDeviceException;
        }
    .end annotation

    const-string v0, "connect"

    .line 18
    invoke-virtual {p0, v0, p1}, Lse/vidstige/jadb/HostConnectToRemoteTcpDevice;->executeHostCommand(Ljava/lang/String;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object p1

    return-object p1
.end method
