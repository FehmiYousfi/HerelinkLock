.class public Lorg/eclipse/californium/elements/util/DataStreamReader;
.super Ljava/lang/Object;
.source "DataStreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;
    }
.end annotation


# instance fields
.field protected final byteStream:Ljava/io/InputStream;

.field protected currentBitIndex:I

.field protected currentByte:B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 101
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->byteStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 104
    iput-byte p1, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentByte:B

    const/4 p1, -0x1

    .line 105
    iput p1, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    return-void

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "byte stream must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readByte()I
    .locals 3

    .line 387
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->byteStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "requested byte exceeds available bytes!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 395
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "request byte fails!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readBytes([BIIZ)I
    .locals 4

    const/4 v0, 0x0

    move v1, p3

    :cond_0
    if-lez p3, :cond_1

    .line 415
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->byteStream:Ljava/io/InputStream;

    add-int v3, p2, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_1

    add-int/2addr v0, v2

    sub-int/2addr v1, v2

    if-nez p4, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-lt v0, p3, :cond_2

    return v0

    .line 423
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "requested "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes exceeds available "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "request bytes fails!"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private readCurrentByte()V
    .locals 1

    .line 373
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readByte()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentByte:B

    const/4 v0, 0x7

    .line 375
    iput v0, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    return-void
.end method

.method private skipBytes(J)J
    .locals 1

    .line 360
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->byteStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->byteStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 118
    iput-byte v0, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentByte:B

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    return-void
.end method

.method public createRangeInputStream(I)Ljava/io/ByteArrayInputStream;
    .locals 3

    .line 337
    iget v0, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    if-gtz v0, :cond_1

    .line 340
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->byteStream:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;

    if-eqz v1, :cond_0

    .line 341
    check-cast v0, Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;

    .line 342
    invoke-static {v0, p1}, Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;->access$000(Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;I)Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;

    move-result-object p1

    return-object p1

    .line 344
    :cond_0
    new-array v0, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 345
    invoke-direct {p0, v0, v1, p1, v2}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readBytes([BIIZ)I

    .line 346
    new-instance p1, Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;

    invoke-direct {p1, v0}, Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;-><init>([B)V

    return-object p1

    .line 338
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bits unread!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;
    .locals 1

    .line 324
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramReader;

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/DataStreamReader;->createRangeInputStream(I)Ljava/io/ByteArrayInputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>(Ljava/io/ByteArrayInputStream;)V

    return-object v0
.end method

.method public read(I)I
    .locals 5

    if-ltz p1, :cond_6

    const/16 v0, 0x20

    if-gt p1, v0, :cond_6

    .line 215
    iget v0, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-ge v1, p1, :cond_5

    shl-int/lit8 v0, v0, 0x8

    .line 219
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readByte()I

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    move v2, v1

    :goto_1
    if-ltz p1, :cond_4

    .line 225
    iget v3, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    if-gez v3, :cond_1

    .line 226
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readCurrentByte()V

    .line 230
    :cond_1
    iget-byte v3, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentByte:B

    iget v4, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    shr-int/2addr v3, v4

    and-int/2addr v3, v0

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-eqz v3, :cond_3

    shl-int v3, v0, p1

    or-int/2addr v2, v3

    .line 237
    :cond_3
    iget v3, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    move v0, v2

    :cond_5
    return v0

    .line 210
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bits must be in range 0 ... 32!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readBytes(I)[B
    .locals 3

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    .line 256
    sget-object p1, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    return-object p1

    .line 260
    :cond_0
    new-array v0, p1, [B

    .line 263
    iget v1, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    :goto_0
    if-ge v2, p1, :cond_2

    const/16 v1, 0x8

    .line 266
    invoke-virtual {p0, v1}, Lorg/eclipse/californium/elements/util/DataStreamReader;->read(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_1
    array-length p1, v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, p1, v1}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readBytes([BIIZ)I

    :cond_2
    return-object v0

    .line 254
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must not be negative!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLong(I)J
    .locals 6

    if-ltz p1, :cond_5

    const/16 v0, 0x40

    if-gt p1, v0, :cond_5

    const-wide/16 v0, 0x0

    .line 170
    iget v2, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    const/4 v3, 0x0

    if-gez v2, :cond_0

    and-int/lit8 v2, p1, 0x7

    if-nez v2, :cond_0

    :goto_0
    if-ge v3, p1, :cond_4

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 174
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readByte()I

    move-result v2

    int-to-long v4, v2

    or-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr p1, v2

    :goto_1
    if-ltz p1, :cond_4

    .line 180
    iget v4, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    if-gez v4, :cond_1

    .line 181
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readCurrentByte()V

    .line 185
    :cond_1
    iget-byte v4, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentByte:B

    iget v5, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    shr-int/2addr v4, v5

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-eqz v4, :cond_3

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v0, v4

    .line 192
    :cond_3
    iget v4, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    return-wide v0

    .line 166
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bits must be in range 0 ... 64!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readNextByte()B
    .locals 1

    .line 286
    iget v0, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    if-ltz v0, :cond_0

    const/16 v0, 0x8

    .line 287
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->read(I)I

    move-result v0

    :goto_0
    int-to-byte v0, v0

    return v0

    .line 289
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readByte()I

    move-result v0

    goto :goto_0
.end method

.method public readVarBytes(I)[B
    .locals 1

    .line 304
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->getVarLengthBits(I)I

    move-result p1

    .line 305
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/DatagramWriter;->getNullLengthValue(I)I

    move-result v0

    .line 306
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/DataStreamReader;->read(I)I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readBytes(I)[B

    move-result-object p1

    return-object p1
.end method

.method public skip(J)J
    .locals 9

    .line 130
    iget v0, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    sub-long/2addr p1, v2

    const/4 v2, -0x1

    .line 133
    iput v2, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-wide/16 v2, 0x7

    and-long/2addr v2, p1

    long-to-int v2, v2

    const-wide/16 v3, 0x8

    .line 136
    div-long/2addr p1, v3

    .line 137
    invoke-direct {p0, p1, p2}, Lorg/eclipse/californium/elements/util/DataStreamReader;->skipBytes(J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_1

    int-to-long p1, v0

    return-wide p1

    :cond_1
    cmp-long p1, v5, p1

    if-gez p1, :cond_2

    goto :goto_1

    .line 144
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readCurrentByte()V

    .line 145
    iget p1, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/californium/elements/util/DataStreamReader;->currentBitIndex:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    :catch_0
    :goto_1
    mul-long/2addr v5, v3

    int-to-long p1, v1

    add-long/2addr v5, p1

    int-to-long p1, v0

    add-long/2addr v5, p1

    return-wide v5
.end method
