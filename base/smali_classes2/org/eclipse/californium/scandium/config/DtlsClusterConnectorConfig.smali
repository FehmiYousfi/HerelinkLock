.class public final Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;
.super Ljava/lang/Object;
.source "DtlsClusterConnectorConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;
    }
.end annotation


# instance fields
.field private address:Ljava/net/InetSocketAddress;

.field private backwardMessages:Ljava/lang/Boolean;

.field private clusterMac:Ljava/lang/Boolean;

.field private identity:Ljava/lang/String;

.field private secret:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->address:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method static synthetic access$002(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->address:Ljava/net/InetSocketAddress;

    return-object p1
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Ljavax/crypto/SecretKey;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->secret:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method static synthetic access$102(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->secret:Ljavax/crypto/SecretKey;

    return-object p1
.end method

.method static synthetic access$200(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->identity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->identity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Ljava/lang/Boolean;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->clusterMac:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$302(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->clusterMac:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Ljava/lang/Boolean;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->backwardMessages:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$402(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->backwardMessages:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static builder()Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;
    .locals 1

    .line 128
    new-instance v0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;
    .locals 1

    .line 138
    new-instance v0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;-><init>(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)V

    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2

    .line 113
    new-instance v0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;-><init>()V

    .line 114
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->address:Ljava/net/InetSocketAddress;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->address:Ljava/net/InetSocketAddress;

    .line 115
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->identity:Ljava/lang/String;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->identity:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->secret:Ljavax/crypto/SecretKey;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->secret:Ljavax/crypto/SecretKey;

    .line 117
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->clusterMac:Ljava/lang/Boolean;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->clusterMac:Ljava/lang/Boolean;

    .line 118
    iget-object v1, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->backwardMessages:Ljava/lang/Boolean;

    iput-object v1, v0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->backwardMessages:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->secret:Ljavax/crypto/SecretKey;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getSecureIdentity()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public useBackwardMessages()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->backwardMessages:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useClusterMac()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->clusterMac:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
