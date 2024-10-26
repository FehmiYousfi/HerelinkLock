.class public Lse/vidstige/jadb/AdbFilterInputStream;
.super Ljava/io/FilterInputStream;
.source "AdbFilterInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lse/vidstige/jadb/AdbFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 16
    iget-object v1, p0, Lse/vidstige/jadb/AdbFilterInputStream;->in:Ljava/io/InputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 17
    iget-object v1, p0, Lse/vidstige/jadb/AdbFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    return v1

    .line 21
    :cond_0
    iget-object v1, p0, Lse/vidstige/jadb/AdbFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    :cond_1
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lse/vidstige/jadb/AdbFilterInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 30
    invoke-virtual {p0}, Lse/vidstige/jadb/AdbFilterInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_0

    move v1, v3

    :cond_0
    return v1

    :cond_1
    add-int v3, p2, v1

    int-to-byte v2, v2

    .line 32
    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    .line 36
    iget-object v2, p0, Lse/vidstige/jadb/AdbFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gtz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
