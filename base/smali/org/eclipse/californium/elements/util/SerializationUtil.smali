.class public Lorg/eclipse/californium/elements/util/SerializationUtil;
.super Ljava/lang/Object;
.source "SerializationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;,
        Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersions;
    }
.end annotation


# static fields
.field private static final ADDRESS_LITERAL:I = 0x1

.field private static final ADDRESS_NAME:I = 0x2

.field private static final ADDRESS_VERSION:I = 0x1

.field private static final ATTRIBUTES_BOOLEAN:I = 0x5

.field private static final ATTRIBUTES_BYTES:I = 0x2

.field private static final ATTRIBUTES_INET_SOCKET_ADDRESS:I = 0x6

.field private static final ATTRIBUTES_INTEGER:I = 0x3

.field private static final ATTRIBUTES_LONG:I = 0x4

.field private static final ATTRIBUTES_STRING:I = 0x1

.field private static final ATTRIBUTES_VERSION:I = 0x1

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final NANOTIME_SNYC_MARK_VERSION:I = 0x1

.field public static final NO_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/eclipse/californium/elements/util/SerializationUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/californium/elements/util/SerializationUtil;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAddress(Lorg/eclipse/californium/elements/util/DataStreamReader;)Ljava/net/InetSocketAddress;
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 326
    invoke-static {p0, v0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readStartItem(Lorg/eclipse/californium/elements/util/DataStreamReader;II)I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return-object v2

    .line 330
    :cond_0
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DataStreamReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    const/16 v1, 0x10

    .line 331
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v1

    .line 332
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 333
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readBytesLeft()[B

    move-result-object p0

    if-eq v3, v0, :cond_2

    const/4 v0, 0x2

    if-eq v3, v0, :cond_1

    return-object v2

    .line 336
    :cond_1
    new-instance v0, Ljava/net/InetSocketAddress;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lorg/eclipse/californium/elements/util/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 339
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2
.end method

.method public static readEndpointContexAttributes(Lorg/eclipse/californium/elements/util/DataStreamReader;Lorg/eclipse/californium/elements/Definitions;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;>(",
            "Lorg/eclipse/californium/elements/util/DataStreamReader;",
            "Lorg/eclipse/californium/elements/Definitions<",
            "TT;>;)",
            "Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;"
        }
    .end annotation

    const-string v0, "Read attribute {}:"

    const/4 v1, 0x1

    const/16 v2, 0x10

    .line 398
    invoke-static {p0, v1, v2}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readStartItem(Lorg/eclipse/californium/elements/util/DataStreamReader;II)I

    move-result v2

    if-gez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 402
    :cond_0
    invoke-virtual {p0, v2}, Lorg/eclipse/californium/elements/util/DataStreamReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    .line 403
    new-instance v2, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    invoke-direct {v2}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;-><init>()V

    .line 404
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bytesAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    .line 405
    invoke-static {p0, v3}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readString(Lorg/eclipse/californium/elements/util/DataStreamReader;I)Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-virtual {p1, v4}, Lorg/eclipse/californium/elements/Definitions;->get(Ljava/lang/String;)Lorg/eclipse/californium/elements/Definition;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 411
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 434
    :pswitch_0
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readAddress(Lorg/eclipse/californium/elements/util/DataStreamReader;)Ljava/net/InetSocketAddress;

    move-result-object v3

    .line 435
    invoke-virtual {v2, v5, v3}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    goto :goto_0

    .line 430
    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result v3

    if-ne v3, v1, :cond_1

    .line 431
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v2, v5, v3}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x40

    .line 426
    invoke-virtual {p0, v3}, Lorg/eclipse/californium/elements/util/DatagramReader;->readLong(I)J

    move-result-wide v6

    .line 427
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    goto :goto_0

    :pswitch_3
    const/16 v3, 0x20

    .line 422
    invoke-virtual {p0, v3}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v3

    .line 423
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    goto :goto_0

    .line 418
    :pswitch_4
    invoke-virtual {p0, v3}, Lorg/eclipse/californium/elements/util/DatagramReader;->readVarBytes(I)[B

    move-result-object v3

    .line 419
    new-instance v6, Lorg/eclipse/californium/elements/util/Bytes;

    invoke-direct {v6, v3}, Lorg/eclipse/californium/elements/util/Bytes;-><init>([B)V

    invoke-virtual {v2, v5, v6}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;

    goto :goto_0

    .line 414
    :pswitch_5
    invoke-static {p0, v3}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readString(Lorg/eclipse/californium/elements/util/DataStreamReader;I)Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-virtual {v2, v5, v3}, Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;->add(Lorg/eclipse/californium/elements/Definition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/MapBasedEndpointContext$Attributes;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 441
    sget-object v5, Lorg/eclipse/californium/elements/util/SerializationUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5, v0, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 439
    sget-object v5, Lorg/eclipse/californium/elements/util/SerializationUtil;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5, v0, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 408
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not in definitions!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readNanotimeSynchronizationMark(Lorg/eclipse/californium/elements/util/DataStreamReader;)J
    .locals 11

    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 476
    invoke-static {p0, v0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readStartItem(Lorg/eclipse/californium/elements/util/DataStreamReader;II)I

    move-result v0

    const-wide/16 v1, 0x0

    if-gtz v0, :cond_0

    return-wide v1

    .line 480
    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p0

    const/16 v0, 0x40

    .line 481
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readLong(I)J

    move-result-wide v3

    .line 482
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readLong(I)J

    move-result-wide v5

    const-string v0, "times"

    .line 483
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->assertFinished(Ljava/lang/String;)V

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 485
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v9

    .line 486
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v7, v3

    invoke-virtual {p0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr v9, v5

    sub-long/2addr v9, v0

    return-wide v9
.end method

.method public static readStartItem(Lorg/eclipse/californium/elements/util/DataStreamReader;II)I
    .locals 2

    if-eqz p1, :cond_2

    .line 181
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readNextByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 188
    invoke-virtual {p0, p2}, Lorg/eclipse/californium/elements/util/DataStreamReader;->read(I)I

    move-result p0

    return p0

    .line 185
    :cond_1
    new-instance p0, Lorg/eclipse/californium/elements/exception/VersionMismatchException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version mismatch! "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is required, not "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/elements/exception/VersionMismatchException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 179
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Version must not be 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readStartItem(Lorg/eclipse/californium/elements/util/DataStreamReader;Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;I)I
    .locals 2

    if-eqz p1, :cond_2

    .line 220
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readNextByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 223
    :cond_0
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil$SupportedVersionsMatcher;->supports(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {p0, p2}, Lorg/eclipse/californium/elements/util/DataStreamReader;->read(I)I

    move-result p0

    return p0

    .line 224
    :cond_1
    new-instance p0, Lorg/eclipse/californium/elements/exception/VersionMismatchException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version mismatch! "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " are required, not "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/elements/exception/VersionMismatchException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 218
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Version must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readString(Lorg/eclipse/californium/elements/util/DataStreamReader;I)Ljava/lang/String;
    .locals 1

    .line 251
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readVarBytes(I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 253
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lorg/eclipse/californium/elements/util/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static skipItems(Ljava/io/InputStream;I)V
    .locals 3

    .line 499
    new-instance v0, Lorg/eclipse/californium/elements/util/DataStreamReader;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/elements/util/DataStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 500
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readNextByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    if-eqz p0, :cond_0

    .line 501
    invoke-virtual {v0, p1}, Lorg/eclipse/californium/elements/util/DataStreamReader;->read(I)I

    move-result p0

    int-to-long v1, p0

    .line 502
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DataStreamReader;->skip(J)J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static verifyString(Lorg/eclipse/californium/elements/util/DataStreamReader;Ljava/lang/String;I)Z
    .locals 2

    if-eqz p1, :cond_3

    .line 277
    invoke-virtual {p0, p2}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readVarBytes(I)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 281
    :cond_0
    sget-object p2, Lorg/eclipse/californium/elements/util/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 282
    invoke-static {p2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0x10

    .line 285
    invoke-static {p0, v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toDisplayString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\""

    .line 286
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 p1, 0x20

    .line 287
    invoke-static {p2, p1, v0}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2HexString([BCI)Ljava/lang/String;

    move-result-object p1

    .line 289
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mismatch, read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", expected "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 275
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Expected value must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 239
    :cond_0
    sget-object v0, Lorg/eclipse/californium/elements/util/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes([BI)V

    return-void
.end method

.method public static write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/net/InetSocketAddress;)V
    .locals 5

    if-nez p1, :cond_0

    .line 302
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeNoItem(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 304
    invoke-static {p0, v1, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeStartItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)I

    move-result v2

    .line 305
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 306
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    .line 307
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 308
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lorg/eclipse/californium/elements/util/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 311
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    .line 313
    :goto_0
    invoke-static {p0, v2, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeFinishedItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)V

    :goto_1
    return-void
.end method

.method public static write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/elements/util/DatagramWriter;",
            "Ljava/util/Map<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 357
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeNoItem(Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 359
    invoke-static {p0, v1, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeStartItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)I

    move-result v2

    .line 360
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 361
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/californium/elements/Definition;

    invoke-virtual {v4}, Lorg/eclipse/californium/elements/Definition;->getKey()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {p0, v4, v5}, Lorg/eclipse/californium/elements/util/SerializationUtil;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/lang/String;I)V

    .line 362
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 363
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 364
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 365
    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3, v5}, Lorg/eclipse/californium/elements/util/SerializationUtil;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/lang/String;I)V

    goto :goto_0

    .line 366
    :cond_2
    instance-of v4, v3, Lorg/eclipse/californium/elements/util/Bytes;

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    .line 367
    invoke-virtual {p0, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 368
    check-cast v3, Lorg/eclipse/californium/elements/util/Bytes;

    invoke-virtual {p0, v3, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeVarBytes(Lorg/eclipse/californium/elements/util/Bytes;I)V

    goto :goto_0

    .line 369
    :cond_3
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    .line 370
    invoke-virtual {p0, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 371
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x20

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    goto :goto_0

    .line 372
    :cond_4
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    .line 373
    invoke-virtual {p0, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 374
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x40

    invoke-virtual {p0, v3, v4, v5}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    goto :goto_0

    .line 375
    :cond_5
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    const/4 v4, 0x5

    .line 376
    invoke-virtual {p0, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 377
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    goto :goto_0

    .line 378
    :cond_6
    instance-of v4, v3, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    .line 379
    invoke-virtual {p0, v4}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 380
    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-static {p0, v3}, Lorg/eclipse/californium/elements/util/SerializationUtil;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/net/InetSocketAddress;)V

    goto/16 :goto_0

    .line 383
    :cond_7
    invoke-static {p0, v2, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeFinishedItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)V

    :goto_1
    return-void
.end method

.method public static writeFinishedItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeSize(II)V

    return-void
.end method

.method public static writeNanotimeSynchronizationMark(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 7

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 458
    invoke-static {p0, v1, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeStartItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)I

    move-result v1

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 460
    invoke-static {}, Lorg/eclipse/californium/elements/util/ClockUtil;->nanoRealtime()J

    move-result-wide v4

    const/16 v6, 0x40

    .line 461
    invoke-virtual {p0, v2, v3, v6}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    .line 462
    invoke-virtual {p0, v4, v5, v6}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeLong(JI)V

    .line 463
    invoke-static {p0, v1, v0}, Lorg/eclipse/californium/elements/util/SerializationUtil;->writeFinishedItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)V

    return-void
.end method

.method public static writeNoItem(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeNoItem(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    return-void
.end method

.method public static writeStartItem(Lorg/eclipse/californium/elements/util/DatagramWriter;II)I
    .locals 0

    if-eqz p1, :cond_0

    int-to-byte p1, p1

    .line 137
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 138
    invoke-virtual {p0, p2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->space(I)I

    move-result p0

    return p0

    .line 135
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "version must not be 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
