.class public Lio/dronefleet/mavlink/protocol/MavlinkPacket;
.super Ljava/lang/Object;
.source "MavlinkPacket.java"


# static fields
.field private static final INCOMPAT_FLAG_SIGNED:I = 0x1

.field static final MAGIC_V1:I = 0xfe

.field static final MAGIC_V2:I = 0xfd


# instance fields
.field private final checksum:I

.field private final compatibleFlags:I

.field private final componentId:I

.field private final incompatibleFlags:I

.field private final messageId:I

.field private final payload:[B

.field private final rawBytes:[B

.field private final sequence:I

.field private final signature:[B

.field private final systemId:I

.field private final versionMarker:I


# direct methods
.method private constructor <init>(IIIIIII[BI[B[B)V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->versionMarker:I

    .line 261
    iput p2, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->incompatibleFlags:I

    .line 262
    iput p3, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->compatibleFlags:I

    .line 263
    iput p4, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->sequence:I

    .line 264
    iput p5, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->systemId:I

    .line 265
    iput p6, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->componentId:I

    .line 266
    iput p7, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->messageId:I

    .line 267
    iput-object p8, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->payload:[B

    .line 268
    iput p9, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->checksum:I

    .line 269
    iput-object p10, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->signature:[B

    .line 270
    iput-object p11, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->rawBytes:[B

    return-void
.end method

.method public static createMavlink1Packet(IIIII[B)Lio/dronefleet/mavlink/protocol/MavlinkPacket;
    .locals 13

    move-object/from16 v8, p5

    .line 101
    array-length v0, v8

    add-int/lit8 v0, v0, 0x8

    new-array v11, v0, [B

    .line 102
    new-instance v0, Lio/dronefleet/mavlink/protocol/ByteArray;

    invoke-direct {v0, v11}, Lio/dronefleet/mavlink/protocol/ByteArray;-><init>([B)V

    const/4 v1, 0x0

    const/16 v2, 0xfe

    .line 103
    invoke-virtual {v0, v2, v1}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    .line 104
    array-length v2, v8

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x2

    move v4, p0

    .line 105
    invoke-virtual {v0, p0, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x3

    move v5, p1

    .line 106
    invoke-virtual {v0, p1, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x4

    move v6, p2

    .line 107
    invoke-virtual {v0, p2, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x5

    move/from16 v7, p3

    .line 108
    invoke-virtual {v0, v7, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    .line 109
    array-length v2, v8

    const/4 v3, 0x6

    invoke-static {v8, v1, v11, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v2, p4

    .line 110
    invoke-static {v11, v2}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->generateCrc([BI)I

    move-result v9

    .line 111
    array-length v2, v8

    add-int/2addr v2, v3

    invoke-virtual {v0, v9, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt16(II)V

    .line 112
    new-instance v12, Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    new-array v10, v1, [B

    const/16 v1, 0xfe

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;-><init>(IIIIIII[BI[B[B)V

    return-object v12
.end method

.method public static createSignedMavlink2Packet(IIIII[BIJ[B)Lio/dronefleet/mavlink/protocol/MavlinkPacket;
    .locals 13

    move-object/from16 v8, p5

    .line 37
    array-length v0, v8

    add-int/lit8 v0, v0, 0x19

    new-array v11, v0, [B

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/protocol/ByteArray;

    invoke-direct {v0, v11}, Lio/dronefleet/mavlink/protocol/ByteArray;-><init>([B)V

    const/4 v1, 0x0

    const/16 v2, 0xfd

    .line 39
    invoke-virtual {v0, v2, v1}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    .line 40
    array-length v2, v8

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x2

    .line 41
    invoke-virtual {v0, v3, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x3

    .line 42
    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x4

    move v4, p0

    .line 43
    invoke-virtual {v0, p0, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x5

    move v5, p1

    .line 44
    invoke-virtual {v0, p1, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x6

    move v6, p2

    .line 45
    invoke-virtual {v0, p2, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x7

    move/from16 v7, p3

    .line 46
    invoke-virtual {v0, v7, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt24(II)V

    .line 47
    array-length v2, v8

    const/16 v3, 0xa

    invoke-static {v8, v1, v11, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v2, p4

    .line 48
    invoke-static {v11, v2}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->generateCrc([BI)I

    move-result v9

    .line 49
    array-length v2, v8

    add-int/2addr v2, v3

    invoke-virtual {v0, v9, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt16(II)V

    move/from16 v0, p6

    move-wide/from16 v2, p7

    move-object/from16 v10, p9

    .line 50
    invoke-static {v11, v0, v2, v3, v10}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->generateSignature([BIJ[B)[B

    move-result-object v10

    .line 51
    array-length v0, v11

    array-length v2, v10

    sub-int/2addr v0, v2

    array-length v2, v10

    invoke-static {v10, v1, v11, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    new-instance v12, Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    const/16 v1, 0xfd

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;-><init>(IIIIIII[BI[B[B)V

    return-object v12
.end method

.method public static createUnsignedMavlink2Packet(IIIII[B)Lio/dronefleet/mavlink/protocol/MavlinkPacket;
    .locals 13

    move-object/from16 v8, p5

    .line 70
    array-length v0, v8

    add-int/lit8 v0, v0, 0xc

    new-array v11, v0, [B

    .line 71
    new-instance v0, Lio/dronefleet/mavlink/protocol/ByteArray;

    invoke-direct {v0, v11}, Lio/dronefleet/mavlink/protocol/ByteArray;-><init>([B)V

    const/4 v1, 0x0

    const/16 v2, 0xfd

    .line 72
    invoke-virtual {v0, v2, v1}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    .line 73
    array-length v2, v8

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x2

    .line 74
    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x3

    .line 75
    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x4

    move v4, p0

    .line 76
    invoke-virtual {v0, p0, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x5

    move v5, p1

    .line 77
    invoke-virtual {v0, p1, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x6

    move v6, p2

    .line 78
    invoke-virtual {v0, p2, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    const/4 v2, 0x7

    move/from16 v7, p3

    .line 79
    invoke-virtual {v0, v7, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt24(II)V

    .line 80
    array-length v2, v8

    const/16 v3, 0xa

    invoke-static {v8, v1, v11, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v2, p4

    .line 81
    invoke-static {v11, v2}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->generateCrc([BI)I

    move-result v9

    .line 82
    array-length v2, v8

    add-int/2addr v2, v3

    invoke-virtual {v0, v9, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt16(II)V

    .line 83
    new-instance v12, Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    new-array v10, v1, [B

    const/16 v1, 0xfd

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;-><init>(IIIIIII[BI[B[B)V

    return-object v12
.end method

.method public static fromV1Bytes([B)Lio/dronefleet/mavlink/protocol/MavlinkPacket;
    .locals 14

    .line 123
    new-instance v0, Lio/dronefleet/mavlink/protocol/ByteArray;

    invoke-direct {v0, p0}, Lio/dronefleet/mavlink/protocol/ByteArray;-><init>([B)V

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt8(I)I

    move-result v3

    const/4 v2, 0x1

    .line 125
    invoke-virtual {v0, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt8(I)I

    move-result v2

    const/4 v4, 0x2

    .line 126
    invoke-virtual {v0, v4}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt8(I)I

    move-result v6

    const/4 v4, 0x3

    .line 127
    invoke-virtual {v0, v4}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt8(I)I

    move-result v7

    const/4 v4, 0x4

    .line 128
    invoke-virtual {v0, v4}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt8(I)I

    move-result v8

    const/4 v4, 0x5

    .line 129
    invoke-virtual {v0, v4}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt8(I)I

    move-result v9

    const/4 v4, 0x6

    .line 130
    invoke-virtual {v0, v4, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->slice(II)[B

    move-result-object v10

    add-int/2addr v2, v4

    .line 131
    invoke-virtual {v0, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt16(I)I

    move-result v11

    .line 132
    new-instance v0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    new-array v12, v1, [B

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v0

    move-object v13, p0

    invoke-direct/range {v2 .. v13}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;-><init>(IIIIIII[BI[B[B)V

    return-object v0
.end method

.method public static fromV2Bytes([B)Lio/dronefleet/mavlink/protocol/MavlinkPacket;
    .locals 14

    .line 143
    new-instance v0, Lio/dronefleet/mavlink/protocol/ByteArray;

    invoke-direct {v0, p0}, Lio/dronefleet/mavlink/protocol/ByteArray;-><init>([B)V

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt8(I)I

    move-result v3

    const/4 v2, 0x1

    .line 145
    invoke-virtual {v0, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt8(I)I

    move-result v2

    const/4 v4, 0x2

    .line 146
    invoke-virtual {v0, v4}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt8(I)I

    move-result v4

    const/4 v5, 0x3

    .line 147
    invoke-virtual {v0, v5}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt8(I)I

    move-result v5

    const/4 v6, 0x4

    .line 148
    invoke-virtual {v0, v6}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt8(I)I

    move-result v6

    const/4 v7, 0x5

    .line 149
    invoke-virtual {v0, v7}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt8(I)I

    move-result v7

    const/4 v8, 0x6

    .line 150
    invoke-virtual {v0, v8}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt8(I)I

    move-result v8

    const/4 v9, 0x7

    .line 151
    invoke-virtual {v0, v9}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt24(I)I

    move-result v9

    const/16 v10, 0xa

    .line 152
    invoke-virtual {v0, v10, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->slice(II)[B

    move-result-object v10

    add-int/lit8 v11, v2, 0xa

    .line 153
    invoke-virtual {v0, v11}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt16(I)I

    move-result v11

    and-int/lit8 v12, v4, 0x1

    if-eqz v12, :cond_0

    add-int/lit8 v2, v2, 0xc

    const/16 v1, 0xd

    .line 156
    invoke-virtual {v0, v2, v1}, Lio/dronefleet/mavlink/protocol/ByteArray;->slice(II)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v1, [B

    :goto_0
    move-object v12, v0

    .line 160
    new-instance v0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    move-object v2, v0

    move-object v13, p0

    invoke-direct/range {v2 .. v13}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;-><init>(IIIIIII[BI[B[B)V

    return-object v0
.end method

.method public static generateCrc([BI)I
    .locals 4

    .line 176
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 179
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    .line 181
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfd

    if-eq v2, v3, :cond_2

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1

    const/4 v2, 0x6

    goto :goto_0

    .line 189
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not a mavlink packet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/16 v2, 0xa

    :goto_0
    add-int/2addr v2, v1

    .line 192
    new-instance v1, Lio/dronefleet/mavlink/protocol/util/CrcX25;

    invoke-direct {v1}, Lio/dronefleet/mavlink/protocol/util/CrcX25;-><init>()V

    .line 193
    invoke-virtual {v1, p0, v0, v2}, Lio/dronefleet/mavlink/protocol/util/CrcX25;->accumulate([BII)V

    .line 194
    invoke-virtual {v1, p1}, Lio/dronefleet/mavlink/protocol/util/CrcX25;->accumulate(I)V

    .line 195
    invoke-virtual {v1}, Lio/dronefleet/mavlink/protocol/util/CrcX25;->get()I

    move-result p0

    return p0
.end method

.method public static generateSignature([BIJ[B)[B
    .locals 5

    .line 209
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    aget-byte v0, p0, v1

    const/16 v2, 0xfd

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0xc

    .line 216
    array-length v3, p0

    if-lt v3, v0, :cond_1

    const/16 v3, 0xd

    new-array v3, v3, [B

    .line 220
    new-instance v4, Lio/dronefleet/mavlink/protocol/ByteArray;

    invoke-direct {v4, v3}, Lio/dronefleet/mavlink/protocol/ByteArray;-><init>([B)V

    .line 221
    invoke-virtual {v4, p1, v1}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt8(II)V

    .line 222
    invoke-virtual {v4, p2, p3, v2}, Lio/dronefleet/mavlink/protocol/ByteArray;->putInt48(JI)V

    :try_start_0
    const-string p1, "SHA-256"

    .line 224
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 225
    invoke-virtual {p1, p4}, Ljava/security/MessageDigest;->update([B)V

    .line 226
    invoke-virtual {p1, p0, v1, v0}, Ljava/security/MessageDigest;->update([BII)V

    const/4 p0, 0x7

    .line 227
    invoke-virtual {p1, v3, v1, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 228
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/4 p2, 0x6

    .line 229
    invoke-static {p1, v1, v3, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 232
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "JVM does not have an implementation of SHA-256 available."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "specified packet seems to be incomplete"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-array p0, v1, [B

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 431
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 433
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/protocol/MavlinkPacket;

    .line 435
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->versionMarker:I

    iget v2, p1, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->versionMarker:I

    if-eq v1, v2, :cond_2

    return v0

    .line 436
    :cond_2
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->incompatibleFlags:I

    iget v2, p1, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->incompatibleFlags:I

    if-eq v1, v2, :cond_3

    return v0

    .line 437
    :cond_3
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->compatibleFlags:I

    iget v2, p1, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->compatibleFlags:I

    if-eq v1, v2, :cond_4

    return v0

    .line 438
    :cond_4
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->sequence:I

    iget v2, p1, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->sequence:I

    if-eq v1, v2, :cond_5

    return v0

    .line 439
    :cond_5
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->systemId:I

    iget v2, p1, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->systemId:I

    if-eq v1, v2, :cond_6

    return v0

    .line 440
    :cond_6
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->componentId:I

    iget v2, p1, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->componentId:I

    if-eq v1, v2, :cond_7

    return v0

    .line 441
    :cond_7
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->messageId:I

    iget v2, p1, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->messageId:I

    if-eq v1, v2, :cond_8

    return v0

    .line 442
    :cond_8
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->checksum:I

    iget v2, p1, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->checksum:I

    if-eq v1, v2, :cond_9

    return v0

    .line 443
    :cond_9
    iget-object v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->payload:[B

    iget-object v2, p1, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->payload:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 444
    :cond_a
    iget-object v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->signature:[B

    iget-object v2, p1, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->signature:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 445
    :cond_b
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->rawBytes:[B

    iget-object p1, p1, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->rawBytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_c
    :goto_0
    return v0
.end method

.method public getChecksum()I
    .locals 1

    .line 344
    iget v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->checksum:I

    return v0
.end method

.method public getCompatibleFlags()I
    .locals 1

    .line 299
    iget v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->compatibleFlags:I

    return v0
.end method

.method public getComponentId()I
    .locals 1

    .line 322
    iget v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->componentId:I

    return v0
.end method

.method public getIncompatibleFlags()I
    .locals 1

    .line 288
    iget v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->incompatibleFlags:I

    return v0
.end method

.method public getMessageId()I
    .locals 1

    .line 329
    iget v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->messageId:I

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .line 337
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->payload:[B

    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    .line 362
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->rawBytes:[B

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 308
    iget v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->sequence:I

    return v0
.end method

.method public getSignature()[B
    .locals 1

    .line 354
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->signature:[B

    return-object v0
.end method

.method public getSignatureLinkId()I
    .locals 2

    .line 417
    invoke-virtual {p0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->isSigned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->signature:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSignatureTimestamp()J
    .locals 2

    .line 424
    new-instance v0, Lio/dronefleet/mavlink/protocol/ByteArray;

    iget-object v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->signature:[B

    invoke-direct {v0, v1}, Lio/dronefleet/mavlink/protocol/ByteArray;-><init>([B)V

    .line 425
    invoke-virtual {p0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->isSigned()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/dronefleet/mavlink/protocol/ByteArray;->getInt48(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getSystemId()I
    .locals 1

    .line 315
    iget v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->systemId:I

    return v0
.end method

.method public getVersionMarker()I
    .locals 1

    .line 278
    iget v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->versionMarker:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 450
    iget v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->versionMarker:I

    mul-int/lit8 v0, v0, 0x1f

    .line 451
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->incompatibleFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 452
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->compatibleFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 453
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->sequence:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 454
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->systemId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 455
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->componentId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 456
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->messageId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 457
    iget-object v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->payload:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 458
    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->checksum:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 459
    iget-object v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->signature:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 460
    iget-object v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->rawBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isMavlink2()Z
    .locals 2

    .line 371
    iget v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->versionMarker:I

    const/16 v1, 0xfd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSigned()Z
    .locals 2

    .line 392
    iget v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->incompatibleFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MavlinkPacket{versionMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->versionMarker:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", incompatibleFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->incompatibleFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compatibleFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->compatibleFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", systemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->systemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", componentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->componentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->messageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->payload:[B

    .line 474
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", checksum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->checksum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->signature:[B

    .line 476
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateCrc(I)Z
    .locals 1

    .line 382
    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->rawBytes:[B

    invoke-static {v0, p1}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->generateCrc([BI)I

    move-result p1

    iget v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->checksum:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public validateSignature([B)Z
    .locals 5

    .line 403
    invoke-virtual {p0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->isSigned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->signature:[B

    iget-object v1, p0, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->rawBytes:[B

    .line 408
    invoke-virtual {p0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getSignatureLinkId()I

    move-result v2

    .line 409
    invoke-virtual {p0}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->getSignatureTimestamp()J

    move-result-wide v3

    .line 406
    invoke-static {v1, v2, v3, v4, p1}, Lio/dronefleet/mavlink/protocol/MavlinkPacket;->generateSignature([BIJ[B)[B

    move-result-object p1

    .line 404
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
