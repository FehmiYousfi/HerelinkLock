.class Lio/dronefleet/mavlink/protocol/TransactionalInputStream;
.super Ljava/io/PushbackInputStream;
.source "TransactionalInputStream.java"


# instance fields
.field private final buffer:[B

.field private cbuffer:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 14
    new-array p1, p2, [B

    iput-object p1, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->buffer:[B

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->cbuffer:I

    return-void
.end method

.method private disallowUnread()V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "use either commit or rollback instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method advance(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    :goto_0
    invoke-virtual {p0}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->available()I

    move-result v0

    if-ge v0, p1, :cond_0

    const-wide/16 v0, 0x5

    .line 34
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->buffer:[B

    iget v1, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->cbuffer:I

    invoke-super {p0, v0, v1, p1}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 41
    :cond_1
    iget v3, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->cbuffer:I

    add-int/2addr v3, v0

    iput v3, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->cbuffer:I

    sub-int/2addr p1, v0

    move v0, v2

    :goto_1
    if-ge v0, p1, :cond_3

    .line 44
    invoke-virtual {p0}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->read()I

    move-result v3

    if-ne v3, v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method commit()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->cbuffer:I

    return-void
.end method

.method public getBuffer()[B
    .locals 4

    .line 54
    iget v0, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->cbuffer:I

    new-array v1, v0, [B

    .line 55
    iget-object v2, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 22
    iget-object v1, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->buffer:[B

    iget v2, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->cbuffer:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->cbuffer:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    :cond_0
    return v0
.end method

.method rollback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->buffer:[B

    iget v1, p0, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->cbuffer:I

    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Ljava/io/PushbackInputStream;->unread([BII)V

    return-void
.end method

.method public unread(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->disallowUnread()V

    return-void
.end method

.method public unread([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->disallowUnread()V

    return-void
.end method

.method public unread([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lio/dronefleet/mavlink/protocol/TransactionalInputStream;->disallowUnread()V

    return-void
.end method
