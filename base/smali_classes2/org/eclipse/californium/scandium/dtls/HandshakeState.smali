.class public Lorg/eclipse/californium/scandium/dtls/HandshakeState;
.super Ljava/lang/Object;
.source "HandshakeState.java"


# instance fields
.field private final contentType:Lorg/eclipse/californium/scandium/dtls/ContentType;

.field private final handshakeType:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

.field private final optional:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ContentType;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;Lorg/eclipse/californium/scandium/dtls/HandshakeType;Z)V

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/californium/scandium/dtls/ContentType;Lorg/eclipse/californium/scandium/dtls/HandshakeType;Z)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->contentType:Lorg/eclipse/californium/scandium/dtls/ContentType;

    .line 81
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->handshakeType:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    .line 82
    iput-boolean p3, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->optional:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)V
    .locals 2

    .line 56
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;Lorg/eclipse/californium/scandium/dtls/HandshakeType;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;Z)V
    .locals 1

    .line 67
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;-><init>(Lorg/eclipse/californium/scandium/dtls/ContentType;Lorg/eclipse/californium/scandium/dtls/HandshakeType;Z)V

    return-void
.end method

.method private static toString(Lorg/eclipse/californium/scandium/dtls/ContentType;Lorg/eclipse/californium/scandium/dtls/HandshakeType;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ContentType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ContentType;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)Ljava/lang/String;
    .locals 1

    .line 145
    instance-of v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    if-eqz v0, :cond_0

    .line 146
    move-object v0, p0

    check-cast v0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    .line 147
    invoke-interface {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object p0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->toString(Lorg/eclipse/californium/scandium/dtls/ContentType;Lorg/eclipse/californium/scandium/dtls/HandshakeType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 149
    :cond_0
    invoke-interface {p0}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->toString(Lorg/eclipse/californium/scandium/dtls/ContentType;Lorg/eclipse/californium/scandium/dtls/HandshakeType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public expect(Lorg/eclipse/californium/scandium/dtls/DTLSMessage;)Z
    .locals 3

    .line 122
    invoke-interface {p1}, Lorg/eclipse/californium/scandium/dtls/DTLSMessage;->getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->contentType:Lorg/eclipse/californium/scandium/dtls/ContentType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 125
    :cond_0
    instance-of v0, p1, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    if-eqz v0, :cond_1

    .line 126
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    .line 127
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->handshakeType:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    if-eq p1, v0, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->contentType:Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-object v0
.end method

.method public getHandshakeType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->handshakeType:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method

.method public isOptional()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->optional:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->contentType:Lorg/eclipse/californium/scandium/dtls/ContentType;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->handshakeType:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    invoke-static {v0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeState;->toString(Lorg/eclipse/californium/scandium/dtls/ContentType;Lorg/eclipse/californium/scandium/dtls/HandshakeType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
