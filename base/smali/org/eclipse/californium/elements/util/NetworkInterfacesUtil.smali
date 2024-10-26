.class public Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;
.super Ljava/lang/Object;
.source "NetworkInterfacesUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;
    }
.end annotation


# static fields
.field public static final COAP_NETWORK_INTERFACES:Ljava/lang/String; = "COAP_NETWORK_INTERFACES"

.field public static final COAP_NETWORK_INTERFACES_EXCLUDE:Ljava/lang/String; = "COAP_NETWORK_INTERFACES_EXCLUDE"

.field public static final DEFAULT_COAP_NETWORK_INTERFACES_EXCLUDE:Ljava/lang/String; = "(vxlan\\.calico|cali[0123456789abcdef]{10,}|cilium_\\w+|lxc[0123456789abcdef]{12,}|virbr\\d+|docker\\d+)"

.field private static final DEFAULT_EXCLUDE:Ljava/util/regex/Pattern;

.field public static final DEFAULT_IPV4_MTU:I = 0x240

.field public static final DEFAULT_IPV6_MTU:I = 0x500

.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final MAX_MTU:I = 0xffff

.field private static anyIpv4:Z

.field private static anyIpv6:Z

.field private static anyMtu:I

.field private static final broadcastAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static broadcastIpv4:Ljava/net/Inet4Address;

.field private static ipv4Mtu:I

.field private static ipv6Mtu:I

.field private static final ipv6Scopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static multicastInterface:Ljava/net/NetworkInterface;

.field private static multicastInterfaceIpv4:Ljava/net/Inet4Address;

.field private static multicastInterfaceIpv6:Ljava/net/Inet6Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "(vxlan\\.calico|cali[0123456789abcdef]{10,}|cilium_\\w+|lxc[0123456789abcdef]{12,}|virbr\\d+|docker\\d+)"

    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->DEFAULT_EXCLUDE:Ljava/util/regex/Pattern;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->broadcastAddresses:Ljava/util/Set;

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->ipv6Scopes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .line 50
    sget-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->DEFAULT_EXCLUDE:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .line 50
    sget-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;

    monitor-enter v0

    const/4 v1, 0x0

    .line 355
    :try_start_0
    sput v1, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyMtu:I

    .line 356
    sput v1, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->ipv4Mtu:I

    .line 357
    sput v1, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->ipv6Mtu:I

    .line 358
    sput-boolean v1, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyIpv4:Z

    .line 359
    sput-boolean v1, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyIpv6:Z

    .line 360
    sget-object v1, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->ipv6Scopes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 361
    sget-object v1, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->broadcastAddresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/4 v1, 0x0

    .line 362
    sput-object v1, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->broadcastIpv4:Ljava/net/Inet4Address;

    .line 363
    sput-object v1, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->multicastInterfaceIpv4:Ljava/net/Inet4Address;

    .line 364
    sput-object v1, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->multicastInterfaceIpv6:Ljava/net/Inet6Address;

    .line 365
    sput-object v1, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->multicastInterface:Ljava/net/NetworkInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static equals(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 555
    invoke-virtual {p0, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static equals(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 567
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getAnyMtu()I
    .locals 1

    .line 376
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->initialize()V

    .line 377
    sget v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyMtu:I

    return v0
.end method

.method public static getBroadcastIpv4()Ljava/net/Inet4Address;
    .locals 1

    .line 435
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->initialize()V

    .line 436
    sget-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->broadcastIpv4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static getIPv4Mtu()I
    .locals 1

    .line 389
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->initialize()V

    .line 390
    sget v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->ipv4Mtu:I

    return v0
.end method

.method public static getIPv6Mtu()I
    .locals 1

    .line 402
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->initialize()V

    .line 403
    sget v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->ipv6Mtu:I

    return v0
.end method

.method public static getIpv6Scopes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 515
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->initialize()V

    .line 516
    sget-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->ipv6Scopes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getMulticastInterface()Ljava/net/NetworkInterface;
    .locals 1

    .line 469
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->initialize()V

    .line 470
    sget-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->multicastInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public static getMulticastInterfaceIpv4()Ljava/net/Inet4Address;
    .locals 1

    .line 446
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->initialize()V

    .line 447
    sget-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->multicastInterfaceIpv4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static getMulticastInterfaceIpv6()Ljava/net/Inet6Address;
    .locals 1

    .line 457
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->initialize()V

    .line 458
    sget-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->multicastInterfaceIpv6:Ljava/net/Inet6Address;

    return-object v0
.end method

.method public static getNetworkInterfaces()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 487
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 491
    new-instance v2, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;-><init>(Ljava/util/Enumeration;Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$1;)V

    .line 492
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 494
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 495
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 497
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    :cond_1
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Network interfaces not available!"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 501
    sget-object v2, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "could not fetch all interface addresses"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v0
.end method

.method private static declared-synchronized initialize()V
    .locals 19

    const-class v1, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;

    monitor-enter v1

    .line 197
    :try_start_0
    sget v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyMtu:I

    if-nez v0, :cond_24

    .line 198
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    .line 204
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 208
    new-instance v4, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$Filter;-><init>(Ljava/util/Enumeration;Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil$1;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v6, 0xffff

    const v7, 0xffff

    const v8, 0xffff

    .line 209
    :goto_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 210
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 211
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 212
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getMTU()I

    move-result v9

    if-lez v9, :cond_0

    if-ge v9, v6, :cond_0

    move v6, v9

    .line 216
    :cond_0
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->supportsMulticast()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 217
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v10

    .line 218
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 219
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/InetAddress;

    .line 220
    instance-of v12, v11, Ljava/net/Inet6Address;

    if-eqz v12, :cond_1

    .line 221
    check-cast v11, Ljava/net/Inet6Address;

    invoke-virtual {v11}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v11

    if-lez v11, :cond_1

    .line 222
    sget-object v11, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->ipv6Scopes:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    :cond_2
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->supportsMulticast()Z

    move-result v10

    if-eqz v10, :cond_19

    sget-object v10, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->multicastInterfaceIpv4:Ljava/net/Inet4Address;

    if-eqz v10, :cond_3

    sget-object v10, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->multicastInterfaceIpv6:Ljava/net/Inet6Address;

    if-eqz v10, :cond_3

    sget-object v10, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->broadcastIpv4:Ljava/net/Inet4Address;

    if-nez v10, :cond_19

    :cond_3
    const/4 v10, 0x0

    .line 237
    sget-object v11, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->broadcastIpv4:Ljava/net/Inet4Address;

    if-eqz v11, :cond_4

    const/4 v10, -0x1

    .line 240
    :cond_4
    sget-object v11, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->multicastInterfaceIpv4:Ljava/net/Inet4Address;

    if-eqz v11, :cond_5

    add-int/lit8 v10, v10, -0x1

    .line 243
    :cond_5
    sget-object v11, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->multicastInterfaceIpv6:Ljava/net/Inet6Address;

    if-eqz v11, :cond_6

    add-int/lit8 v10, v10, -0x1

    .line 246
    :cond_6
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v11
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v12, v5

    move-object v13, v12

    move-object v14, v13

    move v15, v8

    move-object v8, v14

    .line 247
    :goto_2
    :try_start_3
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 248
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/net/InetAddress;

    .line 249
    instance-of v2, v5, Ljava/net/Inet4Address;

    if-eqz v2, :cond_a

    .line 250
    sput-boolean v3, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyIpv4:Z
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v9, :cond_7

    if-ge v9, v7, :cond_7

    move v2, v9

    goto :goto_3

    :cond_7
    move v2, v7

    :goto_3
    if-nez v8, :cond_9

    .line 255
    :try_start_4
    invoke-virtual {v5}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 256
    check-cast v5, Ljava/net/Inet4Address;

    move v7, v2

    move-object v8, v5

    goto :goto_4

    :cond_8
    if-nez v12, :cond_9

    .line 257
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 258
    check-cast v5, Ljava/net/Inet4Address;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v7, v2

    move-object v12, v5

    goto :goto_4

    :catch_0
    move-exception v0

    move v7, v2

    goto/16 :goto_8

    :cond_9
    move v7, v2

    goto :goto_4

    .line 261
    :cond_a
    :try_start_5
    instance-of v2, v5, Ljava/net/Inet6Address;

    if-eqz v2, :cond_d

    .line 262
    move-object v2, v5

    check-cast v2, Ljava/net/Inet6Address;

    .line 263
    sput-boolean v3, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyIpv6:Z

    if-lez v9, :cond_b

    if-ge v9, v15, :cond_b

    move v15, v9

    :cond_b
    if-nez v14, :cond_d

    .line 268
    invoke-virtual {v5}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v17

    if-eqz v17, :cond_c

    move-object v14, v2

    goto :goto_4

    :cond_c
    if-nez v12, :cond_d

    .line 270
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_d

    move-object v13, v2

    :cond_d
    :goto_4
    const/4 v5, 0x0

    goto :goto_2

    .line 276
    :cond_e
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/InterfaceAddress;

    .line 277
    invoke-virtual {v9}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 278
    invoke-virtual {v11}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v17

    if-nez v17, :cond_f

    .line 279
    invoke-virtual {v9}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 280
    invoke-virtual {v9, v11}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 281
    sget-object v9, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->broadcastAddresses:Ljava/util/Set;

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v9, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Found broadcast address {} - {}."

    move-object/from16 v18, v2

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v3, v11, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v5, :cond_10

    .line 284
    check-cast v11, Ljava/net/Inet4Address;

    add-int/lit8 v10, v10, 0x1

    move-object v5, v11

    goto :goto_6

    :cond_f
    move-object/from16 v18, v2

    :cond_10
    :goto_6
    move-object/from16 v2, v18

    const/4 v3, 0x1

    goto :goto_5

    :cond_11
    if-nez v12, :cond_12

    if-eqz v8, :cond_13

    :cond_12
    add-int/lit8 v10, v10, 0x1

    :cond_13
    if-nez v13, :cond_14

    if-eqz v14, :cond_15

    :cond_14
    add-int/lit8 v10, v10, 0x1

    :cond_15
    if-lez v10, :cond_18

    .line 299
    sput-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->multicastInterface:Ljava/net/NetworkInterface;

    .line 300
    sput-object v5, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->broadcastIpv4:Ljava/net/Inet4Address;

    if-nez v8, :cond_16

    move-object v8, v12

    .line 301
    :cond_16
    sput-object v8, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->multicastInterfaceIpv4:Ljava/net/Inet4Address;

    if-nez v14, :cond_17

    goto :goto_7

    :cond_17
    move-object v13, v14

    .line 302
    :goto_7
    sput-object v13, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->multicastInterfaceIpv6:Ljava/net/Inet6Address;
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_18
    move v8, v15

    goto :goto_a

    :catch_1
    move-exception v0

    :goto_8
    move v8, v15

    goto :goto_b

    .line 305
    :cond_19
    :try_start_6
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v2, v7

    .line 306
    :cond_1a
    :goto_9
    :try_start_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 307
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 308
    instance-of v5, v3, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    .line 309
    sput-boolean v5, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyIpv4:Z

    if-lez v9, :cond_1a

    if-ge v9, v2, :cond_1a

    move v2, v9

    goto :goto_9

    .line 313
    :cond_1b
    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    .line 314
    sput-boolean v3, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyIpv6:Z
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-lez v9, :cond_1a

    if-ge v9, v8, :cond_1a

    move v8, v9

    goto :goto_9

    :cond_1c
    move v7, v2

    goto :goto_a

    :catch_2
    move-exception v0

    move v7, v2

    goto :goto_b

    :cond_1d
    :goto_a
    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_b

    .line 206
    :cond_1e
    :try_start_8
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "Network interfaces not available!"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_4
    move-exception v0

    const v6, 0xffff

    const v7, 0xffff

    const v8, 0xffff

    .line 324
    :goto_b
    :try_start_9
    sget-object v2, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "discover the <any> interface failed!"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    .line 325
    sput-boolean v2, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyIpv4:Z

    .line 326
    sput-boolean v2, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyIpv6:Z

    .line 328
    :cond_1f
    sget-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->broadcastAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 329
    sget-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "no broadcast address found!"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_20
    const v2, 0xffff

    if-ne v7, v2, :cond_21

    const/16 v7, 0x240

    :cond_21
    if-ne v8, v2, :cond_22

    const/16 v8, 0x500

    :cond_22
    if-ne v6, v2, :cond_23

    .line 338
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 340
    :cond_23
    sput v7, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->ipv4Mtu:I

    .line 341
    sput v8, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->ipv6Mtu:I

    .line 342
    sput v6, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyMtu:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 344
    :cond_24
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isAnyIpv4()Z
    .locals 1

    .line 413
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->initialize()V

    .line 414
    sget-boolean v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyIpv4:Z

    return v0
.end method

.method public static isAnyIpv6()Z
    .locals 1

    .line 424
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->initialize()V

    .line 425
    sget-boolean v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->anyIpv6:Z

    return v0
.end method

.method public static isBroadcastAddress(Ljava/net/InetAddress;)Z
    .locals 1

    .line 528
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->initialize()V

    .line 529
    sget-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->broadcastAddresses:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMultiAddress(Ljava/net/InetAddress;)Z
    .locals 1

    .line 542
    invoke-static {}, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->initialize()V

    if-eqz p0, :cond_1

    .line 543
    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/californium/elements/util/NetworkInterfacesUtil;->broadcastAddresses:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
