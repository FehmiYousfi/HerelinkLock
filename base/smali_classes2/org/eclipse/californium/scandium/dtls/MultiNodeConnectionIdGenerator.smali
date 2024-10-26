.class public Lorg/eclipse/californium/scandium/dtls/MultiNodeConnectionIdGenerator;
.super Ljava/lang/Object;
.source "MultiNodeConnectionIdGenerator.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/NodeConnectionIdGenerator;


# instance fields
.field private final connectionIdLength:I

.field private final nodeId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    .line 52
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/MultiNodeConnectionIdGenerator;->nodeId:I

    .line 53
    iput p2, p0, Lorg/eclipse/californium/scandium/dtls/MultiNodeConnectionIdGenerator;->connectionIdLength:I

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cid length must be at least 2 bytes!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;
    .locals 3

    .line 68
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/MultiNodeConnectionIdGenerator;->connectionIdLength:I

    new-array v0, v0, [B

    .line 69
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->currentRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 70
    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/MultiNodeConnectionIdGenerator;->nodeId:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 71
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-direct {v1, v0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;-><init>([B)V

    return-object v1
.end method

.method public getNodeId()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/MultiNodeConnectionIdGenerator;->nodeId:I

    return v0
.end method

.method public getNodeId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)I
    .locals 1

    .line 93
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public read(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ConnectionId;
    .locals 1

    .line 82
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/MultiNodeConnectionIdGenerator;->connectionIdLength:I

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readBytes(I)[B

    move-result-object p1

    .line 83
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;-><init>([B)V

    return-object v0
.end method

.method public useConnectionId()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
