.class public final Lorg/eclipse/californium/scandium/dtls/Finished;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.source "Finished.java"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final verifyData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/eclipse/californium/scandium/dtls/Finished;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/Finished;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;Z[B)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/scandium/dtls/Finished;->generateVerifyData(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;Z[B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Finished;->verifyData:[B

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/californium/elements/util/DatagramReader;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;-><init>()V

    .line 76
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->readBytesLeft()[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Finished;->verifyData:[B

    return-void
.end method

.method public static fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 1

    .line 147
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/Finished;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/Finished;-><init>(Lorg/eclipse/californium/elements/util/DatagramReader;)V

    return-object v0
.end method

.method private generateVerifyData(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;Z[B)[B
    .locals 0

    if-eqz p3, :cond_0

    .line 118
    sget-object p3, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->CLIENT_FINISHED_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    invoke-static {p1, p2, p3, p4}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;->doPRF(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;[B)[B

    move-result-object p1

    return-object p1

    .line 120
    :cond_0
    sget-object p3, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;->SERVER_FINISHED_LABEL:Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;

    invoke-static {p1, p2, p3, p4}, Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction;->doPRF(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;Lorg/eclipse/californium/scandium/dtls/cipher/PseudoRandomFunction$Label;[B)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public fragmentToByteArray()[B
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Finished;->verifyData:[B

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Finished;->verifyData:[B

    array-length v0, v0

    return v0
.end method

.method public getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
    .locals 1

    .line 126
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->FINISHED:Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 136
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Verify Data: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Finished;->verifyData:[B

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public verifyData(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;Z[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/californium/scandium/dtls/Finished;->generateVerifyData(Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;Z[B)[B

    move-result-object p1

    .line 98
    iget-object p2, p0, Lorg/eclipse/californium/scandium/dtls/Finished;->verifyData:[B

    invoke-static {p1, p2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p2

    if-nez p2, :cond_1

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Verification of FINISHED message failed"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    sget-object p4, Lorg/eclipse/californium/scandium/dtls/Finished;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 101
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "Expected: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Received: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Finished;->verifyData:[B

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/Finished;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 107
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object p2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object p4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECRYPT_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, p2, p4}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    .line 108
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    invoke-direct {p2, p3, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p2

    :cond_1
    return-void
.end method
