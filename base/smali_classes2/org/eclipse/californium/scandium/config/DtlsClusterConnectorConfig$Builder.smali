.class public final Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;
.super Ljava/lang/Object;
.source "DtlsClusterConnectorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;-><init>()V

    iput-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    iput-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    return-void
.end method


# virtual methods
.method public build()Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;
    .locals 2

    .line 261
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$000(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 264
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$300(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC for cluster traffic requires enabled encryption!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$400(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2

    .line 268
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$402(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 270
    :cond_2
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$300(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_4

    .line 271
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$200(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$302(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 273
    :cond_4
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    return-object v0

    .line 262
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Local cluster socker address missing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIncompleteConfig()Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    return-object v0
.end method

.method public setAddress(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$002(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public setBackwardMessage(Ljava/lang/Boolean;)Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$402(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-object p0
.end method

.method public setClusterMac(Ljava/lang/Boolean;)Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$302(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSecure(Ljava/lang/String;Ljavax/crypto/SecretKey;)Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;
    .locals 1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No identity but secret!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 197
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No secret but identity!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$100(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$100(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/californium/scandium/util/SecretUtil;->destroy(Ljavax/crypto/SecretKey;)V

    .line 202
    :cond_4
    iget-object v0, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-static {v0, p1}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$202(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    iget-object p1, p0, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig$Builder;->config:Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;

    invoke-static {p2}, Lorg/eclipse/californium/scandium/util/SecretUtil;->create(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;->access$102(Lorg/eclipse/californium/scandium/config/DtlsClusterConnectorConfig;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    return-object p0
.end method
