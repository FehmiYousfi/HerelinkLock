.class public Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;
.super Ljava/lang/Object;
.source "UdpMulticastConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/UdpMulticastConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private configuration:Lorg/eclipse/californium/elements/config/Configuration;

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;",
            ">;"
        }
    .end annotation
.end field

.field private localSocketAddress:Ljava/net/InetSocketAddress;

.field private multicastReceiver:Z

.field private outgoingAddress:Ljava/net/InetAddress;

.field private outgoingInterface:Ljava/net/NetworkInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->groups:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMulticastGroup(Ljava/net/InetAddress;)Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;
    .locals 3

    .line 452
    iget-object v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->groups:Ljava/util/List;

    new-instance v1, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;-><init>(Ljava/net/InetAddress;Lorg/eclipse/californium/elements/UdpMulticastConnector$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMulticastGroup(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;
    .locals 3

    .line 469
    iget-object v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->groups:Ljava/util/List;

    new-instance v1, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;-><init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;Lorg/eclipse/californium/elements/UdpMulticastConnector$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lorg/eclipse/californium/elements/UdpMulticastConnector;
    .locals 9

    .line 513
    iget-object v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    if-nez v0, :cond_0

    .line 514
    invoke-static {}, Lorg/eclipse/californium/elements/config/Configuration;->getStandard()Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    .line 516
    :cond_0
    new-instance v0, Lorg/eclipse/californium/elements/UdpMulticastConnector;

    iget-object v2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->localSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->outgoingAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->outgoingInterface:Ljava/net/NetworkInterface;

    iget-object v5, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->groups:Ljava/util/List;

    iget-boolean v6, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->multicastReceiver:Z

    iget-object v7, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/californium/elements/UdpMulticastConnector;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/util/List;ZLorg/eclipse/californium/elements/config/Configuration;Lorg/eclipse/californium/elements/UdpMulticastConnector$1;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->localSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public setConfiguration(Lorg/eclipse/californium/elements/config/Configuration;)Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;
    .locals 0

    .line 500
    iput-object p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->configuration:Lorg/eclipse/californium/elements/config/Configuration;

    return-object p0
.end method

.method public setLocalAddress(Ljava/net/InetAddress;I)Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 390
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->localSocketAddress:Ljava/net/InetSocketAddress;

    return-object p0

    .line 388
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "local address must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocalAddress(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 410
    iput-object p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->localSocketAddress:Ljava/net/InetSocketAddress;

    return-object p0

    .line 408
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "local socket address must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocalPort(I)Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;
    .locals 1

    .line 369
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->localSocketAddress:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public setMulticastReceiver(Z)Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;
    .locals 0

    .line 485
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->multicastReceiver:Z

    return-object p0
.end method

.method public setOutgoingMulticastInterface(Ljava/net/InetAddress;)Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;
    .locals 0

    .line 423
    iput-object p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->outgoingAddress:Ljava/net/InetAddress;

    const/4 p1, 0x0

    .line 424
    iput-object p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->outgoingInterface:Ljava/net/NetworkInterface;

    return-object p0
.end method

.method public setOutgoingMulticastInterface(Ljava/net/NetworkInterface;)Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->outgoingAddress:Ljava/net/InetAddress;

    .line 438
    iput-object p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;->outgoingInterface:Ljava/net/NetworkInterface;

    return-object p0
.end method
