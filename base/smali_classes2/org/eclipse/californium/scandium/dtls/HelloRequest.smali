.class public final Lorg/eclipse/californium/scandium/dtls/HelloRequest;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.source "HelloRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public fragmentToByteArray()[B
    .locals 1

    .line 49
    sget-object v0, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 39
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->HELLO_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method
