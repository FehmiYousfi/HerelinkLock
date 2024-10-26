.class public Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.source "MultiHandshakeMessage.java"


# instance fields
.field private count:I

.field private length:I

.field private tail:Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    .line 42
    iput-object p0, p0, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->tail:Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->tail:Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    invoke-virtual {v0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->setNextHandshakeMessage(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 66
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->tail:Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    .line 67
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->length:I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->length:I

    .line 68
    iget p1, p0, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->count:I

    return-void
.end method

.method public fragmentToByteArray()[B
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getImplementationTypePrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Multi "

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->length:I

    add-int/lit8 v0, v0, -0xc

    return v0
.end method

.method public getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->getNextHandshakeMessage()Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNumberOfHandshakeMessages()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .line 89
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    const/16 v1, 0x5dc

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 90
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/MultiHandshakeMessage;->getNextHandshakeMessage()Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 93
    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getNextHandshakeMessage()Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
