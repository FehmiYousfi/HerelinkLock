.class public Lorg/eclipse/californium/scandium/dtls/SingleNodeConnectionIdGenerator;
.super Ljava/lang/Object;
.source "SingleNodeConnectionIdGenerator.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;


# instance fields
.field private final connectionIdLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 43
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/SingleNodeConnectionIdGenerator;->connectionIdLength:I

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cid length must not be less than 0 bytes!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;
    .locals 2

    .line 53
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/SingleNodeConnectionIdGenerator;->useConnectionId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/SingleNodeConnectionIdGenerator;->connectionIdLength:I

    new-array v0, v0, [B

    .line 55
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->currentRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 56
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-direct {v1, v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;-><init>([B)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public read(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ConnectionId;
    .locals 2

    .line 64
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/SingleNodeConnectionIdGenerator;->useConnectionId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/SingleNodeConnectionIdGenerator;->connectionIdLength:I

    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readBytes(I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;-><init>([B)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public useConnectionId()Z
    .locals 1

    .line 48
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/SingleNodeConnectionIdGenerator;->connectionIdLength:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
