.class public Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.source "GenericHandshakeMessage.java"


# instance fields
.field private final type:Lorg/eclipse/californium/scandium/dtls/HandshakeType;


# direct methods
.method protected constructor <init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;->type:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-void
.end method

.method public static fromByteArray(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;
    .locals 1

    .line 75
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V

    return-object v0
.end method


# virtual methods
.method public fragmentToByteArray()[B
    .locals 3

    .line 59
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;->getRawMessage()[B

    move-result-object v0

    .line 60
    array-length v1, v0

    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected getImplementationTypePrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Generic "

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;->getRawMessage()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0xc

    return v0
.end method

.method public getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;->type:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method
