.class public abstract Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.super Ljava/lang/Object;
.source "HandshakeMessage.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/DTLSMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$MissingHandshakeParameterException;
    }
.end annotation


# static fields
.field public static final FRAGMENT_LENGTH_BITS:I = 0x18

.field public static final FRAGMENT_OFFSET_BITS:I = 0x18

.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final MESSAGE_HEADER_LENGTH_BYTES:I = 0xc

.field public static final MESSAGE_LENGTH_BITS:I = 0x18

.field public static final MESSAGE_SEQ_BITS:I = 0x10

.field public static final MESSAGE_TYPE_BITS:I = 0x8


# instance fields
.field private byteArray:[B

.field private messageSeq:I

.field private nextHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

.field private rawMessage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromByteArray([B)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 241
    :try_start_0
    new-instance v1, Lorg/eclipse/californium/elements/util/DatagramReader;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([BZ)V

    move v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x8

    .line 243
    invoke-virtual {v1, v7}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v8

    .line 244
    invoke-static {v8}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->getTypeByCode(I)Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v10

    const/4 v9, 0x1

    if-eqz v10, :cond_6

    .line 249
    sget-object v8, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "Parsing HANDSHAKE message of type [{}]"

    invoke-interface {v8, v11, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v8, 0x18

    .line 250
    invoke-virtual {v1, v8}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v11

    const/16 v12, 0x10

    .line 251
    invoke-virtual {v1, v12}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v12

    .line 252
    invoke-virtual {v1, v8}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v13

    .line 253
    invoke-virtual {v1, v8}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v8

    .line 255
    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result v14

    div-int/2addr v14, v7

    const/4 v3, 0x3

    if-gt v8, v14, :cond_5

    .line 263
    invoke-virtual {v1, v8}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object v14

    .line 265
    array-length v15, v0

    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result v16

    div-int/lit8 v16, v16, 0x8

    sub-int v7, v15, v16

    if-eq v11, v8, :cond_1

    add-int/2addr v8, v13

    if-gt v8, v11, :cond_0

    .line 275
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;

    invoke-virtual {v14}, Lorg/eclipse/californium/elements/util/DatagramReader;->readBytesLeft()[B

    move-result-object v14

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lorg/eclipse/californium/scandium/dtls/FragmentedHandshakeMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/HandshakeType;III[B)V

    move-object v8, v3

    const/4 v3, 0x0

    goto :goto_2

    .line 269
    :cond_0
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v1, "Message %s fragment %d exceeds overall length %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v10, v3, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v2, v3, v4}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    if-nez v13, :cond_4

    const/4 v3, 0x0

    .line 282
    :try_start_1
    invoke-static {v10, v14, v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->fromReader(Lorg/eclipse/californium/scandium/dtls/HandshakeType;Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object v8
    :try_end_1
    .catch Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$MissingHandshakeParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 284
    :catch_0
    :try_start_2
    invoke-static {v10}, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;->fromByteArray(Lorg/eclipse/californium/scandium/dtls/HandshakeType;)Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;

    move-result-object v8

    .line 287
    :goto_1
    invoke-static {v0, v4, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    iput-object v4, v8, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->rawMessage:[B

    .line 288
    invoke-virtual {v8, v12}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->setMessageSeq(I)V

    :goto_2
    if-nez v5, :cond_2

    move-object v5, v8

    goto :goto_3

    .line 293
    :cond_2
    invoke-virtual {v6, v8}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->setNextHandshakeMessage(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V

    .line 296
    :goto_3
    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    return-object v5

    :cond_3
    move v4, v7

    move-object v6, v8

    goto/16 :goto_0

    .line 278
    :cond_4
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v1, "Message %s unexpected fragment offset"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v10, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v2, v3, v4}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    .line 257
    :cond_5
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v1, "Message %s fragment length %d exceeds available data %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v10, v3, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v2, v3, v4}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0

    .line 246
    :cond_6
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const-string v1, "Cannot parse unsupported message type %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNEXPECTED_MESSAGE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v2, v3, v4}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 300
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Handshake message malformed"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake message malformed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v4, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v2, v3, v4}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v1, v0, v2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v1
.end method

.method public static fromGenericHandshakeMessage(Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v0

    .line 321
    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Parsing HANDSHAKE message of type [{}]"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;->toByteArray()[B

    move-result-object v1

    .line 323
    new-instance v2, Lorg/eclipse/californium/elements/util/DatagramReader;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;->fragmentToByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([BZ)V

    .line 325
    invoke-static {v0, v2, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->fromReader(Lorg/eclipse/californium/scandium/dtls/HandshakeType;Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p1

    .line 328
    iput-object v1, p1, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->rawMessage:[B

    .line 329
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;->getMessageSeq()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->setMessageSeq(I)V

    .line 330
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/GenericHandshakeMessage;->getNextHandshakeMessage()Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->setNextHandshakeMessage(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 334
    sget-object p1, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Handshake message malformed"

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handshake message malformed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p1, p0, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1
.end method

.method private static fromReader(Lorg/eclipse/californium/scandium/dtls/HandshakeType;Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 358
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$HandshakeType:[I

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "HandshakeParameter must not be null!"

    packed-switch v0, :pswitch_data_0

    .line 413
    new-instance p1, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p0, p2, v1

    const-string p0, "Cannot parse unsupported message type %s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNEXPECTED_MESSAGE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p2, v0, v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p1, p0, p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p1

    .line 409
    :pswitch_0
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/Finished;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_0

    .line 405
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;->getKeyExchangeAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->readClientKeyExchange(Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p2

    goto :goto_0

    .line 403
    :cond_0
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$MissingHandshakeParameterException;

    invoke-direct {p0, v4, v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$MissingHandshakeParameterException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$1;)V

    throw p0

    .line 398
    :pswitch_2
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateVerify;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p2

    goto :goto_0

    .line 394
    :pswitch_3
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/ServerHelloDone;

    invoke-direct {p2}, Lorg/eclipse/californium/scandium/dtls/ServerHelloDone;-><init>()V

    goto :goto_0

    .line 390
    :pswitch_4
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/CertificateRequest;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p2

    goto :goto_0

    :pswitch_5
    if-eqz p2, :cond_1

    .line 386
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;->getKeyExchangeAlgorithm()Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->readServerKeyExchange(Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p2

    goto :goto_0

    .line 384
    :cond_1
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$MissingHandshakeParameterException;

    invoke-direct {p0, v4, v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$MissingHandshakeParameterException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$1;)V

    throw p0

    :pswitch_6
    if-eqz p2, :cond_2

    .line 379
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/HandshakeParameter;->getCertificateType()Lorg/eclipse/californium/scandium/dtls/CertificateType;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/californium/scandium/dtls/CertificateMessage;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/CertificateType;)Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    move-result-object p2

    goto :goto_0

    .line 377
    :cond_2
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$MissingHandshakeParameterException;

    invoke-direct {p0, v4, v3}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$MissingHandshakeParameterException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$1;)V

    throw p0

    .line 372
    :pswitch_7
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/HelloVerifyRequest;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p2

    goto :goto_0

    .line 368
    :pswitch_8
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/ServerHello;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p2

    goto :goto_0

    .line 364
    :pswitch_9
    invoke-static {p1}, Lorg/eclipse/californium/scandium/dtls/ClientHello;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ClientHello;

    move-result-object p2

    goto :goto_0

    .line 360
    :pswitch_a
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/HelloRequest;

    invoke-direct {p2}, Lorg/eclipse/californium/scandium/dtls/HelloRequest;-><init>()V

    .line 417
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    return-object p2

    .line 418
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    .line 419
    new-instance p2, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    aput-object p0, v0, v2

    const-string p0, "Too many bytes, %d left, message not completely parsed! message type %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p2, p0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readClientKeyExchange(Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 463
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$KeyExchangeAlgorithm:[I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 469
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/EcdhPskClientKeyExchange;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p0

    return-object p0

    .line 471
    :cond_0
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v0, "Unknown key exchange algorithm"

    invoke-direct {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p0

    .line 467
    :cond_1
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/PSKClientKeyExchange;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p0

    return-object p0

    .line 465
    :cond_2
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/ECDHClientKeyExchange;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p0

    return-object p0
.end method

.method private static readServerKeyExchange(Lorg/eclipse/californium/elements/util/DatagramReader;Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 438
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$KeyExchangeAlgorithm:[I

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$KeyExchangeAlgorithm;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 444
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/EcdhPskServerKeyExchange;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p0

    return-object p0

    .line 446
    :cond_0
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-instance p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {p1, v0, v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    const-string v0, "Unsupported key exchange algorithm"

    invoke-direct {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p0

    .line 442
    :cond_1
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/PSKServerKeyExchange;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p0

    return-object p0

    .line 440
    :cond_2
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/EcdhSignedServerKeyExchange;->fromReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected fragmentChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->byteArray:[B

    return-void
.end method

.method public abstract fragmentToByteArray()[B
.end method

.method public final getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;
    .locals 1

    .line 137
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ContentType;->HANDSHAKE:Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-object v0
.end method

.method public getFragmentLength()I
    .locals 1

    .line 491
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageLength()I

    move-result v0

    return v0
.end method

.method public getFragmentOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getImplementationTypePrefix()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public abstract getMessageLength()I
.end method

.method public getMessageSeq()I
    .locals 1

    .line 500
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->messageSeq:I

    return v0
.end method

.method public abstract getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;
.end method

.method public getNextHandshakeMessage()Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->nextHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    return-object v0
.end method

.method protected final getRawMessage()[B
    .locals 1

    .line 549
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->rawMessage:[B

    return-object v0
.end method

.method public setMessageSeq(I)V
    .locals 3

    .line 511
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->byteArray:[B

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 518
    iput p1, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->messageSeq:I

    return-void

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handshake message sequence number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range [0...65535]!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "message is already serialized!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNextHandshakeMessage(Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->nextHandshakeMessage:Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;

    return-void
.end method

.method public size()I
    .locals 1

    .line 106
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getFragmentLength()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    .line 184
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->rawMessage:[B

    if-eqz v0, :cond_0

    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->byteArray:[B

    if-nez v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getFragmentLength()I

    move-result v0

    .line 190
    new-instance v1, Lorg/eclipse/californium/elements/util/DatagramWriter;

    add-int/lit8 v0, v0, 0xc

    invoke-direct {v1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 191
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    .line 192
    invoke-virtual {v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->byteArray:[B

    .line 194
    :cond_1
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->byteArray:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getImplementationTypePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Handshake Message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message Sequence No: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->messageSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Length: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageLength()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 3

    .line 205
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageType()Lorg/eclipse/californium/scandium/dtls/HandshakeType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeType;->getCode()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 206
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getMessageLength()I

    move-result v0

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 207
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->messageSeq:I

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 208
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getFragmentOffset()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 209
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->getFragmentLength()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 210
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;->fragmentToByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    return-void
.end method
