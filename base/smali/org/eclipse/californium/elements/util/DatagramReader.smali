.class public final Lorg/eclipse/californium/elements/util/DatagramReader;
.super Lorg/eclipse/californium/elements/util/DataStreamReader;
.source "DatagramReader.java"


# instance fields
.field private markBitIndex:I

.field private markByte:B


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/DataStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 91
    iget-byte p1, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->currentByte:B

    iput-byte p1, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->markByte:B

    .line 92
    iget p1, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->currentBitIndex:I

    iput p1, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->markBitIndex:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 80
    new-instance v0, Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/californium/elements/util/DataStreamReader$RangeInputStream;-><init>([BII)V

    invoke-direct {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 64
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    const/4 v0, 0x0

    array-length p1, p1

    invoke-direct {p0, p2, v0, p1}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([BII)V

    return-void
.end method

.method private available()I
    .locals 1

    .line 221
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->byteStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public assertFinished(Ljava/lang/String;)V
    .locals 3

    .line 174
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not finished! "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits left."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bitsLeft()I
    .locals 2

    .line 208
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->currentBitIndex:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public bytesAvailable()Z
    .locals 1

    .line 187
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->available()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bytesAvailable(I)Z
    .locals 1

    .line 198
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->available()I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public close()V
    .locals 3

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->byteStream:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->byteStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    invoke-super {p0}, Lorg/eclipse/californium/elements/util/DataStreamReader;->close()V

    return-void
.end method

.method public mark()V
    .locals 2

    .line 102
    iget-byte v0, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->currentByte:B

    iput-byte v0, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->markByte:B

    .line 103
    iget v0, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->currentBitIndex:I

    iput v0, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->markBitIndex:I

    .line 104
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->byteStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public readBytes(I)[B
    .locals 4

    .line 142
    invoke-direct {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->available()I

    move-result v0

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-gt p1, v0, :cond_1

    .line 153
    :goto_0
    invoke-super {p0, p1}, Lorg/eclipse/californium/elements/util/DataStreamReader;->readBytes(I)[B

    move-result-object p1

    return-object p1

    .line 149
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes exceeds available "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readBytesLeft()[B
    .locals 1

    const/4 v0, -0x1

    .line 162
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->byteStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :catch_0
    iget-byte v0, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->markByte:B

    iput-byte v0, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->currentByte:B

    .line 118
    iget v0, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->markBitIndex:I

    iput v0, p0, Lorg/eclipse/californium/elements/util/DatagramReader;->currentBitIndex:I

    return-void
.end method
