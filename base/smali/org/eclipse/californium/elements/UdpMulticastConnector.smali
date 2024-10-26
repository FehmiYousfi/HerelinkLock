.class public Lorg/eclipse/californium/elements/UdpMulticastConnector;
.super Lorg/eclipse/californium/elements/UDPConnector;
.source "UdpMulticastConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/UdpMulticastConnector$Builder;,
        Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;
    }
.end annotation


# static fields
.field public static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;",
            ">;"
        }
    .end annotation
.end field

.field private loopbackDisable:Z

.field private outgoingAddress:Ljava/net/InetAddress;

.field private outgoingInterface:Ljava/net/NetworkInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    const-class v0, Lorg/eclipse/californium/elements/UdpMulticastConnector;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/net/InetSocketAddress;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/util/List;ZLorg/eclipse/californium/elements/config/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/net/NetworkInterface;",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;",
            ">;Z",
            "Lorg/eclipse/californium/elements/config/Configuration;",
            ")V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p6}, Lorg/eclipse/californium/elements/UDPConnector;-><init>(Ljava/net/InetSocketAddress;Lorg/eclipse/californium/elements/config/Configuration;)V

    .line 136
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->groups:Ljava/util/List;

    const/4 p1, 0x1

    .line 175
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/UdpMulticastConnector;->setReuseAddress(Z)V

    .line 176
    iput-object p3, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->outgoingInterface:Ljava/net/NetworkInterface;

    .line 177
    iput-object p2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->outgoingAddress:Ljava/net/InetAddress;

    .line 178
    iget-object p2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->groups:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object p2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->localAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    .line 180
    iget-object p3, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->groups:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    .line 181
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->isBroadcastAddress(Ljava/net/InetAddress;)Z

    move-result p4

    if-eqz p4, :cond_1

    if-eqz p5, :cond_5

    if-eqz p3, :cond_0

    .line 184
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->multicast:Z

    goto :goto_1

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Broadcast and additional multicast addresses are not supported for multicast receiver function!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p3, :cond_3

    .line 192
    invoke-virtual {p2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 193
    iget-object p3, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->groups:Ljava/util/List;

    new-instance p4, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;

    const/4 p6, 0x0

    invoke-direct {p4, p2, p6}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;-><init>(Ljava/net/InetAddress;Lorg/eclipse/californium/elements/UdpMulticastConnector$1;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "missing multicast address to join!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-eqz p5, :cond_5

    .line 200
    iget-object p2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->groups:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, p1, :cond_4

    .line 201
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->multicast:Z

    .line 202
    new-instance p1, Ljava/net/InetSocketAddress;

    iget-object p2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->groups:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;

    invoke-static {p2}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->access$100(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/InetAddress;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->localAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p3

    invoke-direct {p1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->effectiveAddr:Ljava/net/InetSocketAddress;

    goto :goto_1

    .line 204
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multiple multicast addresses are nor supported for multicast receiver function!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/InetSocketAddress;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/util/List;ZLorg/eclipse/californium/elements/config/Configuration;Lorg/eclipse/californium/elements/UdpMulticastConnector$1;)V
    .locals 0

    .line 111
    invoke-direct/range {p0 .. p6}, Lorg/eclipse/californium/elements/UdpMulticastConnector;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/util/List;ZLorg/eclipse/californium/elements/config/Configuration;)V

    return-void
.end method


# virtual methods
.method public isMutlicastReceiver()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->multicast:Z

    return v0
.end method

.method public setLoopbackMode(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->loopbackDisable:Z

    return-void
.end method

.method public declared-synchronized start()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 236
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 237
    monitor-exit p0

    return-void

    .line 239
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->localAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/net/MulticastSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 242
    iget-boolean v2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->loopbackDisable:Z

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->localAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 245
    sget-object v2, Lorg/eclipse/californium/elements/UdpMulticastConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "socket {}, loopback mode {}"

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-static {v4}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->getLoopbackMode()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/net/BindException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    :try_start_3
    iget-object v2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->outgoingAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->outgoingAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 261
    :try_start_4
    iget-object v2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->outgoingAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setInterface(Ljava/net/InetAddress;)V

    .line 262
    iget-object v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->outgoingAddress:Ljava/net/InetAddress;

    .line 263
    sget-object v2, Lorg/eclipse/californium/elements/UdpMulticastConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "interface {}"

    iget-object v4, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->outgoingAddress:Ljava/net/InetAddress;

    invoke-static {v4}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 265
    :try_start_5
    sget-object v3, Lorg/eclipse/californium/elements/UdpMulticastConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "error: multicast set interface"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->outgoingInterface:Ljava/net/NetworkInterface;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_2

    .line 269
    :try_start_6
    iget-object v2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->outgoingInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    .line 270
    sget-object v2, Lorg/eclipse/californium/elements/UdpMulticastConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "interface {}"

    iget-object v4, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->outgoingInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    .line 272
    :try_start_7
    sget-object v3, Lorg/eclipse/californium/elements/UdpMulticastConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "error: multicast set interface"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 281
    :try_start_8
    invoke-static {v3}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->access$200(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/NetworkInterface;

    move-result-object v6
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v6, :cond_4

    .line 283
    :try_start_9
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-static {v3}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->access$100(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {v3}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->access$200(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/NetworkInterface;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 284
    sget-object v6, Lorg/eclipse/californium/elements/UdpMulticastConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "joined group {} with {}"

    invoke-static {v3}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->access$100(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->access$200(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/NetworkInterface;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catch_2
    move v4, v5

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 290
    :try_start_a
    invoke-static {v3}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->access$200(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/NetworkInterface;

    move-result-object v4

    if-nez v4, :cond_3

    .line 291
    :cond_5
    invoke-static {v3}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->access$100(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 292
    sget-object v4, Lorg/eclipse/californium/elements/UdpMulticastConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "joined group {}"

    invoke-static {v3}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->access$100(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v2

    .line 295
    :try_start_b
    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    .line 296
    invoke-static {v3}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->access$100(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_8

    .line 297
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->isAnyIpv4()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_b

    .line 299
    :cond_7
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "IPv6 only interface doesn\'t support IPv4 multicast!"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_8
    invoke-static {v3}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->access$100(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_b

    .line 302
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->isAnyIpv6()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_b

    .line 304
    :cond_a
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "IPv4 only interface doesn\'t support IPv6 multicast!"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_b
    throw v2

    .line 310
    :cond_c
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/UdpMulticastConnector;->init(Ljava/net/DatagramSocket;)V

    .line 311
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->multicast:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 312
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->groups:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;

    invoke-static {v2}, Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;->access$100(Lorg/eclipse/californium/elements/UdpMulticastConnector$Join;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->getLocalPort()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->effectiveAddr:Ljava/net/InetSocketAddress;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 314
    :cond_d
    monitor-exit p0

    return-void

    :catch_4
    move-exception v0

    .line 252
    :try_start_c
    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    .line 253
    sget-object v1, Lorg/eclipse/californium/elements/UdpMulticastConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "can\'t bind to {}"

    iget-object v3, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->localAddr:Ljava/net/InetSocketAddress;

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    throw v0

    :catch_5
    move-exception v0

    .line 248
    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    .line 249
    sget-object v1, Lorg/eclipse/californium/elements/UdpMulticastConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "can\'t bind to {}"

    iget-object v3, p0, Lorg/eclipse/californium/elements/UdpMulticastConnector;->localAddr:Ljava/net/InetSocketAddress;

    invoke-static {v3}, Lorg/eclipse/californium/elements/util/StringUtil;->toString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
