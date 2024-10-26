.class Lio/dronefleet/mavlink/protocol/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private final bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lio/dronefleet/mavlink/protocol/ByteArray;->bytes:[B

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/ByteArray;->bytes:[B

    return-object v0
.end method

.method public getInt16(I)I
    .locals 2

    const/4 v0, 0x2

    .line 19
    invoke-virtual {p0, p1, v0}, Lio/dronefleet/mavlink/protocol/ByteArray;->getLong(II)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public getInt24(I)I
    .locals 2

    const/4 v0, 0x3

    .line 27
    invoke-virtual {p0, p1, v0}, Lio/dronefleet/mavlink/protocol/ByteArray;->getLong(II)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public getInt48(I)J
    .locals 2

    const/4 v0, 0x6

    .line 35
    invoke-virtual {p0, p1, v0}, Lio/dronefleet/mavlink/protocol/ByteArray;->getLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInt8(I)I
    .locals 2

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, Lio/dronefleet/mavlink/protocol/ByteArray;->getLong(II)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public getLong(II)J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 51
    iget-object v3, p0, Lio/dronefleet/mavlink/protocol/ByteArray;->bytes:[B

    add-int v4, p1, v2

    aget-byte v3, v3, v4

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public length()I
    .locals 1

    .line 67
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/ByteArray;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public putInt16(II)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x2

    .line 23
    invoke-virtual {p0, v0, v1, p2, p1}, Lio/dronefleet/mavlink/protocol/ByteArray;->putLong(JII)V

    return-void
.end method

.method public putInt24(II)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x3

    .line 31
    invoke-virtual {p0, v0, v1, p2, p1}, Lio/dronefleet/mavlink/protocol/ByteArray;->putLong(JII)V

    return-void
.end method

.method public putInt48(JI)V
    .locals 1

    const/4 v0, 0x6

    .line 39
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/dronefleet/mavlink/protocol/ByteArray;->putLong(JII)V

    return-void
.end method

.method public putInt8(II)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, v0, v1, p2, p1}, Lio/dronefleet/mavlink/protocol/ByteArray;->putLong(JII)V

    return-void
.end method

.method public putLong(JII)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 58
    iget-object v1, p0, Lio/dronefleet/mavlink/protocol/ByteArray;->bytes:[B

    add-int v2, p3, v0

    mul-int/lit8 v3, v0, 0x8

    shr-long v3, p1, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public slice(II)[B
    .locals 3

    .line 43
    new-array v0, p2, [B

    .line 44
    iget-object v1, p0, Lio/dronefleet/mavlink/protocol/ByteArray;->bytes:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
