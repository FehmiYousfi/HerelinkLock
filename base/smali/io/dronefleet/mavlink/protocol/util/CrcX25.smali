.class public Lio/dronefleet/mavlink/protocol/util/CrcX25;
.super Ljava/lang/Object;
.source "CrcX25.java"


# instance fields
.field private crc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    .line 9
    iput v0, p0, Lio/dronefleet/mavlink/protocol/util/CrcX25;->crc:I

    return-void
.end method


# virtual methods
.method public accumulate(I)V
    .locals 2

    .line 27
    iget v0, p0, Lio/dronefleet/mavlink/protocol/util/CrcX25;->crc:I

    and-int/lit16 v1, v0, 0xff

    xor-int/2addr p1, v1

    shl-int/lit8 v1, p1, 0x4

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, p1, 0x8

    xor-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x3

    xor-int/2addr v0, v1

    shr-int/lit8 p1, p1, 0x4

    xor-int/2addr p1, v0

    .line 30
    iput p1, p0, Lio/dronefleet/mavlink/protocol/util/CrcX25;->crc:I

    return-void
.end method

.method public accumulate(Ljava/lang/String;)V
    .locals 1

    .line 13
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/protocol/util/CrcX25;->accumulate([B)V

    return-void
.end method

.method public accumulate([B)V
    .locals 2

    .line 17
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/dronefleet/mavlink/protocol/util/CrcX25;->accumulate([BII)V

    return-void
.end method

.method public accumulate([BII)V
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 22
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lio/dronefleet/mavlink/protocol/util/CrcX25;->accumulate(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get()I
    .locals 2

    .line 34
    iget v0, p0, Lio/dronefleet/mavlink/protocol/util/CrcX25;->crc:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
