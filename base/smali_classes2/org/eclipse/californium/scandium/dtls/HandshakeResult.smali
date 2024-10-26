.class public Lorg/eclipse/californium/scandium/dtls/HandshakeResult;
.super Ljava/lang/Object;
.source "HandshakeResult.java"


# instance fields
.field private final cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

.field private final customArgument:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/lang/Object;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 55
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;->cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    .line 56
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;->customArgument:Ljava/lang/Object;

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cid must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getConnectionId()Lorg/eclipse/californium/scandium/dtls/ConnectionId;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;->cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    return-object v0
.end method

.method public getCustomArgument()Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;->customArgument:Ljava/lang/Object;

    return-object v0
.end method
