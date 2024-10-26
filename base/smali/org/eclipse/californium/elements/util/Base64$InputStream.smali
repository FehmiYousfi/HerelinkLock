.class public Lorg/eclipse/californium/elements/util/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 1707
    invoke-direct {p0, p1, v0}, Lorg/eclipse/californium/elements/util/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .line 1733
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1734
    iput p2, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->options:I

    and-int/lit8 p1, p2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1735
    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->breakLines:Z

    and-int/lit8 p1, p2, 0x1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1736
    :goto_1
    iput-boolean v0, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->encode:Z

    .line 1737
    iget-boolean p1, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->encode:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    :goto_2
    iput p1, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->bufferLength:I

    .line 1738
    iget p1, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->bufferLength:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->buffer:[B

    const/4 p1, -0x1

    .line 1739
    iput p1, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->position:I

    .line 1740
    iput v1, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->lineLength:I

    .line 1741
    invoke-static {p2}, Lorg/eclipse/californium/elements/util/Base64;->access$000(I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->decodabet:[B

    return-void
.end method


# virtual methods
.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1755
    iget v0, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->position:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-gez v0, :cond_9

    .line 1756
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->encode:Z

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v4, v0, [B

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v5, v0, :cond_0

    .line 1760
    iget-object v7, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ltz v7, :cond_0

    int-to-byte v7, v7

    .line 1764
    aput-byte v7, v4, v5

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-lez v6, :cond_1

    const/4 v5, 0x0

    .line 1773
    iget-object v7, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->buffer:[B

    const/4 v8, 0x0

    iget v9, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->options:I

    invoke-static/range {v4 .. v9}, Lorg/eclipse/californium/elements/util/Base64;->access$100([BII[BII)[B

    .line 1774
    iput v2, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->position:I

    .line 1775
    iput v3, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->numSigBytes:I

    goto :goto_3

    :cond_1
    return v1

    :cond_2
    new-array v0, v3, [B

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_6

    .line 1789
    :cond_3
    iget-object v5, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_4

    .line 1790
    iget-object v6, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->decodabet:[B

    and-int/lit8 v7, v5, 0x7f

    aget-byte v6, v6, v7

    const/4 v7, -0x5

    if-le v6, v7, :cond_3

    :cond_4
    if-gez v5, :cond_5

    goto :goto_2

    :cond_5
    int-to-byte v5, v5

    .line 1796
    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-ne v4, v3, :cond_7

    .line 1800
    iget-object v3, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->buffer:[B

    iget v4, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->options:I

    invoke-static {v0, v2, v3, v2, v4}, Lorg/eclipse/californium/elements/util/Base64;->access$200([BI[BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->numSigBytes:I

    .line 1801
    iput v2, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->position:I

    goto :goto_3

    :cond_7
    if-nez v4, :cond_8

    return v1

    .line 1808
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Improperly padded Base64 input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1815
    :cond_9
    :goto_3
    iget v0, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->position:I

    if-ltz v0, :cond_d

    .line 1817
    iget v3, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->numSigBytes:I

    if-lt v0, v3, :cond_a

    return v1

    .line 1821
    :cond_a
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->encode:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->breakLines:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->lineLength:I

    const/16 v3, 0x4c

    if-lt v0, v3, :cond_b

    .line 1822
    iput v2, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->lineLength:I

    const/16 v0, 0xa

    return v0

    .line 1826
    :cond_b
    iget v0, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->lineLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->lineLength:I

    .line 1830
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->buffer:[B

    iget v2, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->position:I

    aget-byte v0, v0, v2

    .line 1832
    iget v2, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->position:I

    iget v3, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->bufferLength:I

    if-lt v2, v3, :cond_c

    .line 1833
    iput v1, p0, Lorg/eclipse/californium/elements/util/Base64$InputStream;->position:I

    :cond_c
    and-int/lit16 v0, v0, 0xff

    return v0

    .line 1843
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error in Base64 code reading stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 1866
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/Base64$InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_0

    add-int v2, p2, v0

    int-to-byte v1, v1

    .line 1869
    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    return v0
.end method
