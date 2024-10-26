.class public final Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.source "HelloVerifyRequest.java"


# static fields
.field private static final COOKIE_LENGTH_BITS:I = 0x8

.field private static final VERSION_BITS:I = 0x8


# instance fields
.field private final cookie:[B

.field private final serverVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;[B)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->serverVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    .line 123
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->cookie:[B

    return-void
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 3

    const/16 v0, 0x8

    .line 140
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 141
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v2

    .line 142
    invoke-static {v1, v2}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->valueOf(II)Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    move-result-object v1

    .line 144
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object p0

    .line 146
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;

    invoke-direct {v0, v1, p0}, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;-><init>(Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;[B)V

    return-object v0
.end method


# virtual methods
.method public fragmentToByteArray()[B
    .locals 3

    .line 128
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->cookie:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 130
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->serverVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMajor()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 131
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->serverVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMinor()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 133
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->cookie:[B

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    .line 135
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getCookie()[B
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->cookie:[B

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->cookie:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 151
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->HELLO_VERIFY_REQUEST:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method

.method public getServerVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->serverVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    .line 172
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Server Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->serverVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMajor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->serverVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;->getMinor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Cookie Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->cookie:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Cookie: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->cookie:[B

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
