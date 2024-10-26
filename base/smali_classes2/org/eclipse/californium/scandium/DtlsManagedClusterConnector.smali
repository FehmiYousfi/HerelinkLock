.class public Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;
.super Lorg/eclipse/californium/scandium/DtlsClusterConnector;
.source "DtlsManagedClusterConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;,
        Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementUdpConnector;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final PROTOCOL_MANAGEMENT_DTLS:Ljava/lang/String; = "mgmt-dtls"

.field public static final PROTOCOL_MANAGEMENT_DTLS_MAC:Ljava/lang/String; = "mgmt-dtls-mac"

.field public static final PROTOCOL_MANAGEMENT_UDP:Ljava/lang/String; = "mgmt-udp"


# instance fields
.field private final clusterManagementConnector:Lorg/eclipse/californium/elements/Connector;

.field private final protocol:Ljava/lang/String;

.field private final useClusterMac:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)V
    .locals 1

    .line 117
    invoke-static {p1}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->createConnectionStore(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;-><init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;)V
    .locals 10

    const/4 v0, 0x0

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;-><init>(Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;Z)V

    .line 134
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->getSecureIdentity()Ljava/lang/String;

    move-result-object p3

    .line 135
    iget-object v2, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSocketReceiveBufferSize()Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->addConditionally(Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    .line 136
    iget-object v4, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->config:Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getSocketSendBufferSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->addConditionally(Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz p3, :cond_3

    .line 138
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 139
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getLoggingTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "dtls-cluster-mgmt"

    if-eqz v7, :cond_1

    .line 140
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {v7}, Lorg/eclipse/californium/elements/util/StringUtil;->normalizeLoggingTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 146
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->getConfiguration()Lorg/eclipse/californium/elements/config/Configuration;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;->builder(Lorg/eclipse/californium/elements/config/Configuration;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, v8}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->setLoggingTag(Ljava/lang/String;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    move-result-object p1

    sget-object v7, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    const/16 v8, 0x1f4

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v7, v8, v9}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;ILjava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    move-result-object p1

    sget-object v7, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_RETRANSMISSIONS:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    move-result-object p1

    sget-object v7, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_BACKOFF:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v7, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    move-result-object p1

    sget-object v7, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_CONNECTIONS:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/16 v8, 0x400

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    move-result-object p1

    sget-object v7, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECEIVER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v7, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    move-result-object p1

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECEIVE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    move-result-object p1

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SEND_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->setAddress(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    move-result-object p1

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;

    invoke-direct {v1, p3, v6}, Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedSinglePskStore;-><init>(Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    invoke-virtual {p1, v1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->setAdvancedPskStore(Lorg/eclipse/californium/scandium/dtls/pskstore/AdvancedPskStore;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    move-result-object p1

    new-instance p3, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$1;

    invoke-direct {p3, p0}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$1;-><init>(Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;)V

    invoke-virtual {p1, p3}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->setConnectionListener(Lorg/eclipse/californium/scandium/ConnectionListener;)Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;

    move-result-object p1

    .line 192
    invoke-static {v6}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 193
    new-instance p3, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig$Builder;->build()Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementDtlsConnector;-><init>(Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;Lorg/eclipse/californium/scandium/config/DtlsConnectorConfig;)V

    iput-object p3, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterManagementConnector:Lorg/eclipse/californium/elements/Connector;

    .line 195
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->useClusterMac()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->useClusterMac:Z

    .line 196
    iget-boolean p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->useClusterMac:Z

    if-eqz p1, :cond_2

    const-string p1, "mgmt-dtls-mac"

    goto :goto_1

    :cond_2
    const-string p1, "mgmt-dtls"

    :goto_1
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->protocol:Ljava/lang/String;

    goto :goto_2

    .line 198
    :cond_3
    new-instance p1, Lorg/eclipse/californium/elements/config/Configuration;

    invoke-direct {p1}, Lorg/eclipse/californium/elements/config/Configuration;-><init>()V

    .line 199
    sget-object p3, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_RECEIVER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, p3, v1}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 200
    sget-object p3, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_SENDER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 201
    sget-object p3, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_RECEIVE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, p3, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 202
    sget-object p3, Lorg/eclipse/californium/elements/config/UdpConfig;->UDP_SEND_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, p3, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 203
    new-instance p3, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementUdpConnector;

    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object p2

    invoke-direct {p3, p0, p2, p1}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector$ClusterManagementUdpConnector;-><init>(Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;Ljava/net/InetSocketAddress;Lorg/eclipse/californium/elements/config/Configuration;)V

    .line 205
    iput-object p3, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterManagementConnector:Lorg/eclipse/californium/elements/Connector;

    .line 206
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->useClusterMac:Z

    const-string p1, "mgmt-udp"

    .line 207
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->protocol:Ljava/lang/String;

    .line 209
    :goto_2
    sget-object p1, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->getNodeID()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const/4 p3, 0x1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->protocol:Ljava/lang/String;

    aput-object v0, p2, p3

    aput-object v2, p2, v5

    aput-object v3, p2, v4

    const-string p3, "cluster-node {} ({}): recv. buffer {}, send buffer {}"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .line 59
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->useClusterMac:Z

    return p0
.end method

.method private static addConditionally(Ljava/lang/Integer;I)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    .line 429
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static calculateClusterMac(Ljavax/crypto/Mac;Ljava/net/DatagramPacket;)[B
    .locals 4

    .line 390
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 391
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v1

    .line 392
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    add-int/lit8 v2, v1, 0x3

    .line 393
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v2, 0x8

    if-ge v3, p1, :cond_2

    .line 396
    invoke-virtual {p0, v0, v1, v2}, Ljavax/crypto/Mac;->update([BII)V

    sub-int/2addr p1, v3

    if-lez p1, :cond_1

    add-int/2addr v1, v3

    rsub-int/lit8 v2, v2, 0x40

    const/16 v3, 0x20

    if-le p1, v2, :cond_0

    .line 401
    invoke-virtual {p0, v0, v1, v3}, Ljavax/crypto/Mac;->update([BII)V

    add-int/lit8 p1, p1, -0x20

    add-int/2addr v1, p1

    move p1, v3

    .line 405
    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Ljavax/crypto/Mac;->update([BII)V

    .line 407
    :cond_1
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0

    .line 409
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes is too small for cluster MAC message!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setClusterMac(Ljavax/crypto/Mac;Ljava/net/DatagramPacket;)V
    .locals 3

    .line 372
    invoke-static {p0, p1}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->calculateClusterMac(Ljavax/crypto/Mac;Ljava/net/DatagramPacket;)[B

    move-result-object p0

    .line 373
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 374
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result p1

    add-int/lit8 v1, p1, 0x3

    .line 375
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x4

    add-int/2addr p1, v1

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 376
    invoke-static {p0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static validateClusterMac(Ljavax/crypto/Mac;Ljava/net/DatagramPacket;)Z
    .locals 6

    .line 352
    invoke-static {p0, p1}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->calculateClusterMac(Ljavax/crypto/Mac;Ljava/net/DatagramPacket;)[B

    move-result-object p0

    .line 353
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 354
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result p1

    add-int/lit8 v1, p1, 0x4

    add-int/lit8 p1, p1, 0x3

    .line 355
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v1, p1

    const/4 p1, 0x0

    move v2, p1

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    .line 358
    aget-byte v4, p0, v2

    add-int v5, v1, v2

    aget-byte v5, v0, v5

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 233
    invoke-super {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->destroy()V

    .line 234
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterManagementConnector:Lorg/eclipse/californium/elements/Connector;

    invoke-interface {v0}, Lorg/eclipse/californium/elements/Connector;->destroy()V

    return-void
.end method

.method protected getClusterMacLength()I
    .locals 1

    .line 245
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->useClusterMac:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getClusterManagementConnector()Lorg/eclipse/californium/elements/Connector;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterManagementConnector:Lorg/eclipse/californium/elements/Connector;

    return-object v0
.end method

.method public getManagementProtocol()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method protected init(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->init(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Ljava/lang/Integer;)V

    .line 221
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterManagementConnector:Lorg/eclipse/californium/elements/Connector;

    invoke-interface {p1}, Lorg/eclipse/californium/elements/Connector;->start()V

    .line 222
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->startReceiver()V

    return-void
.end method

.method protected processDatagramFromClusterNetwork(Ljava/lang/Byte;Ljava/net/DatagramPacket;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->useClusterMac:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 279
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterManagementConnector:Lorg/eclipse/californium/elements/Connector;

    check-cast v4, Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v4, v5}, Lorg/eclipse/californium/scandium/DTLSConnector;->getDtlsContextByAddress(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 284
    invoke-virtual {v4}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getThreadLocalClusterReadMac()Ljavax/crypto/Mac;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 288
    invoke-static {v4, p2}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->validateClusterMac(Ljavax/crypto/Mac;Ljava/net/DatagramPacket;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 289
    sget-object v5, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    invoke-static {v4, p2}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->calculateClusterMac(Ljavax/crypto/Mac;Ljava/net/DatagramPacket;)[B

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 291
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    .line 292
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result p2

    add-int/lit8 v6, p2, 0x3

    .line 293
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x4

    add-int/2addr v6, v7

    add-int/2addr p2, v6

    add-int/lit8 v6, p2, 0x8

    .line 294
    invoke-static {v5, p2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 296
    sget-object v5, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "cluster-node {} ({}): drop internal record, cluster MAC failure! {} != {}"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->getNodeID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    iget-object v8, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->protocol:Ljava/lang/String;

    aput-object v8, v7, v1

    invoke-static {v4}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    invoke-static {p2}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v7, v3

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :cond_0
    iget-object p2, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    if-eqz p2, :cond_2

    .line 300
    sget-object p2, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->RECORD_TYPE_INCOMING:Ljava/lang/Byte;

    invoke-virtual {p2, p1}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 301
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    invoke-interface {p1}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->badForwardMessage()V

    goto :goto_0

    .line 302
    :cond_1
    sget-object p2, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->RECORD_TYPE_OUTGOING:Ljava/lang/Byte;

    invoke-virtual {p2, p1}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 303
    iget-object p1, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterHealth:Lorg/eclipse/californium/scandium/DtlsClusterHealth;

    invoke-interface {p1}, Lorg/eclipse/californium/scandium/DtlsClusterHealth;->badBackwardMessage()V

    :cond_2
    :goto_0
    return-void

    .line 286
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cluster MAC could not be validated! Missing keys."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cluster MAC could not be validated! Missing DTLS context."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 309
    sget-object p2, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->getNodeID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->protocol:Ljava/lang/String;

    aput-object v2, v3, v1

    aput-object p1, v3, v0

    const-string v0, "cluster-node {} ({}): receiving failed!"

    invoke-interface {p2, v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Cluster MAC could not be validated!"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 313
    :cond_5
    invoke-super {p0, p1, p2}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->processDatagramFromClusterNetwork(Ljava/lang/Byte;Ljava/net/DatagramPacket;)V

    return-void
.end method

.method protected processManagementDatagramFromClusterNetwork(Ljava/net/DatagramPacket;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->getNodeID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->protocol:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "cluster-node {} ({}): process datagram from {}, {} bytes"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterManagementConnector:Lorg/eclipse/californium/elements/Connector;

    invoke-interface {v0, p1}, Lorg/eclipse/californium/elements/Connector;->processDatagram(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method protected sendDatagramToClusterNetwork(Ljava/net/DatagramPacket;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->useClusterMac:Z

    if-eqz v0, :cond_2

    .line 326
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterManagementConnector:Lorg/eclipse/californium/elements/Connector;

    check-cast v0, Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/DTLSConnector;->getDtlsContextByAddress(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/dtls/DTLSContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/DTLSContext;->getThreadLocalClusterWriteMac()Ljavax/crypto/Mac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->setClusterMac(Ljavax/crypto/Mac;Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 333
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cluster MAC could not be generated! Missing keys."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cluster MAC could not be generated! Missing dtls context."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 337
    sget-object v0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->LOGGER:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->getNodeID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->protocol:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string v2, "cluster-node {} ({}): sending failed!"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cluster MAC could not be generated!"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 341
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->sendDatagramToClusterNetwork(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 227
    invoke-super {p0}, Lorg/eclipse/californium/scandium/DtlsClusterConnector;->stop()V

    .line 228
    iget-object v0, p0, Lorg/eclipse/californium/scandium/DtlsManagedClusterConnector;->clusterManagementConnector:Lorg/eclipse/californium/elements/Connector;

    invoke-interface {v0}, Lorg/eclipse/californium/elements/Connector;->stop()V

    return-void
.end method
