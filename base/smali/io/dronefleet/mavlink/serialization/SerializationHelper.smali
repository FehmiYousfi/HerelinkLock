.class public Lio/dronefleet/mavlink/serialization/SerializationHelper;
.super Ljava/lang/Object;
.source "SerializationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeDouble(Ljava/nio/ByteBuffer;)D
    .locals 2

    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static decodeDoubleArray(Ljava/nio/ByteBuffer;I)[D
    .locals 4

    .line 156
    div-int/lit8 p1, p1, 0x8

    .line 157
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 159
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeDouble(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "I)",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 164
    invoke-static {p1, p2, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->integerValue(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-static {p0, p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/lang/Class;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFloat(Ljava/nio/ByteBuffer;)F
    .locals 0

    .line 63
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    return p0
.end method

.method public static decodeFloatArray(Ljava/nio/ByteBuffer;I)[F
    .locals 3

    .line 148
    div-int/lit8 p1, p1, 0x4

    .line 149
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 151
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static decodeInt16(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 32
    invoke-static {p0, v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->integerValue(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static decodeInt16Array(Ljava/nio/ByteBuffer;I)[I
    .locals 3

    .line 108
    div-int/lit8 p1, p1, 0x2

    .line 109
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 111
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static decodeInt32(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 36
    invoke-static {p0, v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->integerValue(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static decodeInt32Array(Ljava/nio/ByteBuffer;I)[I
    .locals 3

    .line 124
    div-int/lit8 p1, p1, 0x4

    .line 125
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 127
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static decodeInt64(Ljava/nio/ByteBuffer;)J
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 44
    invoke-static {p0, v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->integerValue(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static decodeInt64Array(Ljava/nio/ByteBuffer;I)[J
    .locals 4

    .line 140
    div-int/lit8 p1, p1, 0x8

    .line 141
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 143
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static decodeInt8(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x1

    .line 24
    invoke-static {p0, v0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->integerValue(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static decodeInt8Array(Ljava/nio/ByteBuffer;I)[I
    .locals 3

    .line 93
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 95
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 4

    .line 72
    new-array v0, p1, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    .line 74
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-nez v3, :cond_0

    .line 76
    new-instance p0, Ljava/lang/String;

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0

    .line 78
    :cond_0
    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    new-instance p0, Ljava/lang/String;

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static decodeUint16(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 28
    invoke-static {p0, v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->integerValue(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static decodeUint16Array(Ljava/nio/ByteBuffer;I)[I
    .locals 3

    .line 100
    div-int/lit8 p1, p1, 0x2

    .line 101
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 103
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static decodeUint32(Ljava/nio/ByteBuffer;)J
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 40
    invoke-static {p0, v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->integerValue(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static decodeUint32Array(Ljava/nio/ByteBuffer;I)[J
    .locals 4

    .line 116
    div-int/lit8 p1, p1, 0x4

    .line 117
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 119
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 49
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 52
    :goto_0
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    if-ge p0, v1, :cond_0

    .line 53
    aget-byte v1, v0, p0

    .line 54
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p0

    aget-byte v2, v0, v2

    aput-byte v2, v0, p0

    .line 55
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p0

    aput-byte v1, v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public static decodeUint64Array(Ljava/nio/ByteBuffer;I)[Ljava/math/BigInteger;
    .locals 3

    .line 132
    div-int/lit8 p1, p1, 0x8

    .line 133
    const-class v0, Ljava/math/BigInteger;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/math/BigInteger;

    check-cast v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 135
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static decodeUint8(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    invoke-static {p0, v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->integerValue(Ljava/nio/ByteBuffer;IZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static decodeUint8Array(Ljava/nio/ByteBuffer;I)[B
    .locals 2

    .line 86
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, v0, v1, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static encodeDoubleArray([DI)[B
    .locals 4

    .line 345
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 347
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p0, v1

    .line 348
    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeEnum(Ljava/lang/Class;II)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)[B"
        }
    .end annotation

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    new-array p0, p0, [B

    const/4 p2, 0x0

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    .line 272
    invoke-static {p1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x4

    if-ne p2, p0, :cond_2

    int-to-long p0, p1

    .line 274
    invoke-static {p0, p1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static encodeFloat(F)[B
    .locals 3

    .line 194
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    const/4 v0, 0x4

    new-array v0, v0, [B

    ushr-int/lit8 v1, p0, 0x0

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeFloatArray([FI)[B
    .locals 3

    .line 314
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 316
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 317
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeInt16(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    ushr-int/lit8 v1, p0, 0x0

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeInt16Array([II)[B
    .locals 0

    .line 341
    invoke-static {p0, p1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeInt32(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    ushr-int/lit8 v1, p0, 0x0

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeInt64(J)[B
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    ushr-long v3, p0, v2

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    const/16 v0, 0x10

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, v1, v2

    const/16 v0, 0x18

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    const/16 v0, 0x20

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    const/16 v0, 0x28

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x5

    aput-byte v0, v1, v2

    const/16 v0, 0x30

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    const/16 v0, 0x38

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    const/4 p1, 0x7

    aput-byte p0, v1, p1

    return-object v1
.end method

.method public static encodeInt64(Ljava/math/BigInteger;)[B
    .locals 6

    .line 216
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const/16 p0, 0x8

    new-array v2, p0, [B

    const/4 v3, 0x0

    ushr-long v4, v0, v3

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    ushr-long v3, v0, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x1

    aput-byte p0, v2, v3

    const/16 p0, 0x10

    ushr-long v3, v0, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x2

    aput-byte p0, v2, v3

    const/16 p0, 0x18

    ushr-long v3, v0, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x3

    aput-byte p0, v2, v3

    const/16 p0, 0x20

    ushr-long v3, v0, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x4

    aput-byte p0, v2, v3

    const/16 p0, 0x28

    ushr-long v3, v0, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x5

    aput-byte p0, v2, v3

    const/16 p0, 0x30

    ushr-long v3, v0, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x6

    aput-byte p0, v2, v3

    const/16 p0, 0x38

    ushr-long/2addr v0, p0

    long-to-int p0, v0

    int-to-byte p0, p0

    const/4 v0, 0x7

    aput-byte p0, v2, v0

    return-object v2
.end method

.method public static encodeInt8(I)B
    .locals 0

    int-to-byte p0, p0

    return p0
.end method

.method public static encodeInt8Array([II)[B
    .locals 3

    .line 332
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 334
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    int-to-byte v2, v2

    .line 335
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeString(Ljava/lang/String;I)[B
    .locals 1

    .line 297
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 300
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeUint16(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    ushr-int/lit8 v1, p0, 0x0

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeUint16Array([II)[B
    .locals 3

    .line 305
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 307
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    int-to-short v2, v2

    .line 308
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeUint32(J)[B
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-long v2, p0, v1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/16 v1, 0x18

    ushr-long/2addr p0, v1

    long-to-int p0, p0

    int-to-byte p0, p0

    const/4 p1, 0x3

    aput-byte p0, v0, p1

    return-object v0
.end method

.method public static encodeUint32Array([JI)[B
    .locals 4

    .line 323
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 325
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p0, v1

    long-to-int v2, v2

    .line 326
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeUint64(Ljava/math/BigInteger;)[B
    .locals 6

    .line 203
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const/16 p0, 0x8

    new-array v2, p0, [B

    const/4 v3, 0x0

    ushr-long v4, v0, v3

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    ushr-long v3, v0, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x1

    aput-byte p0, v2, v3

    const/16 p0, 0x10

    ushr-long v3, v0, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x2

    aput-byte p0, v2, v3

    const/16 p0, 0x18

    ushr-long v3, v0, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x3

    aput-byte p0, v2, v3

    const/16 p0, 0x20

    ushr-long v3, v0, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x4

    aput-byte p0, v2, v3

    const/16 p0, 0x28

    ushr-long v3, v0, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x5

    aput-byte p0, v2, v3

    const/16 p0, 0x30

    ushr-long v3, v0, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x6

    aput-byte p0, v2, v3

    const/16 p0, 0x38

    ushr-long/2addr v0, p0

    long-to-int p0, v0

    int-to-byte p0, p0

    const/4 v0, 0x7

    aput-byte p0, v2, v0

    return-object v2
.end method

.method public static encodeUint8(I)B
    .locals 0

    int-to-byte p0, p0

    return p0
.end method

.method public static encodeUint8Array([BI)[B
    .locals 1

    .line 289
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 291
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 292
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private intArrayValue([B)[I
    .locals 2

    .line 362
    array-length v0, p1

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    .line 363
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v0
.end method

.method private static integerValue(Ljava/nio/ByteBuffer;IZ)J
    .locals 0

    if-eqz p2, :cond_0

    .line 187
    invoke-static {p0, p1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->signedIntegerValue(Ljava/nio/ByteBuffer;I)J

    move-result-wide p0

    return-wide p0

    .line 189
    :cond_0
    invoke-static {p0, p1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->unsignedIntegerValue(Ljava/nio/ByteBuffer;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private longArrayValue([B)[J
    .locals 2

    .line 370
    array-length v0, p1

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [J

    .line 371
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    return-object v0
.end method

.method private shortArrayValue([B)[S
    .locals 2

    .line 355
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 356
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method private static signedIntegerValue(Ljava/nio/ByteBuffer;I)J
    .locals 6

    .line 177
    invoke-static {p0, p1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->unsignedIntegerValue(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, -0x1

    shr-long v2, v0, p1

    const-wide/16 v4, 0x1

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    const-wide/16 v2, -0x1

    shl-long p0, v2, p1

    or-long/2addr v0, p0

    :cond_0
    return-wide v0
.end method

.method private static unsignedIntegerValue(Ljava/nio/ByteBuffer;I)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 171
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method
