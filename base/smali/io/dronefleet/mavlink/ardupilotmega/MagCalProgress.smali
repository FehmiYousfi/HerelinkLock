.class public final Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;
.super Ljava/lang/Object;
.source "MagCalProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x5c
    description = "Reports progress of compass calibration."
    id = 0xbf
.end annotation


# instance fields
.field private final attempt:I

.field private final calMask:I

.field private final calStatus:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MagCalStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final compassId:I

.field private final completionMask:[B

.field private final completionPct:I

.field private final directionX:F

.field private final directionY:F

.field private final directionZ:F


# direct methods
.method private constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;II[BFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MagCalStatus;",
            ">;II[BFFF)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->compassId:I

    .line 48
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calMask:I

    .line 49
    iput-object p3, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    .line 50
    iput p4, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->attempt:I

    .line 51
    iput p5, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionPct:I

    .line 52
    iput-object p6, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionMask:[B

    .line 53
    iput p7, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionX:F

    .line 54
    iput p8, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionY:F

    .line 55
    iput p9, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionZ:F

    return-void
.end method

.method synthetic constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;II[BFFFLio/dronefleet/mavlink/ardupilotmega/MagCalProgress$1;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p9}, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;-><init>(IILio/dronefleet/mavlink/util/EnumValue;II[BFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 63
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;
    .locals 10

    .line 224
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 225
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 226
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 227
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 228
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 229
    const-class v0, Lio/dronefleet/mavlink/common/MagCalStatus;

    const/4 v3, 0x1

    invoke-static {v0, p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v3

    .line 230
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 231
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    const/16 v0, 0xa

    .line 232
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v6

    .line 233
    new-instance p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;-><init>(IILio/dronefleet/mavlink/util/EnumValue;II[BFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x1b

    .line 237
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 238
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionX:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 239
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionY:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 240
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionZ:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 241
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->compassId:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 242
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calMask:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 243
    const-class v1, Lio/dronefleet/mavlink/common/MagCalStatus;

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 244
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->attempt:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 245
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionPct:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 246
    iget-object p0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionMask:[B

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final attempt()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Attempt number."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 113
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->attempt:I

    return v0
.end method

.method public final calMask()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmask of compasses being\n                calibrated."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 88
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calMask:I

    return v0
.end method

.method public final calStatus()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MagCalStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Calibration Status."
        enumType = Lio/dronefleet/mavlink/common/MagCalStatus;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 101
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final compassId()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Compass being calibrated."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 75
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->compassId:I

    return v0
.end method

.method public final completionMask()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xa
        description = "Bitmask of sphere sections (see\n                http://en.wikipedia.org/wiki/Geodesic_grid)."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 139
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionMask:[B

    return-object v0
.end method

.method public final completionPct()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Completion percentage."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 125
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionPct:I

    return v0
.end method

.method public final directionX()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame direction vector for display."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 151
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionX:F

    return v0
.end method

.method public final directionY()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame direction vector for display."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 163
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionY:F

    return v0
.end method

.method public final directionZ()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Body frame direction vector for display."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 175
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionZ:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 182
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;

    .line 183
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->compassId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->compassId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 184
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calMask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calMask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 185
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 186
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->attempt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->attempt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 187
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionPct:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionPct:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 188
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionMask:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionMask:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 189
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionX:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 190
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 191
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionZ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionZ:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0

    :cond_b
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 198
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->compassId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 199
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calMask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 200
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 201
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->attempt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 202
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionPct:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 203
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionMask:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 204
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 205
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 206
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionZ:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagCalProgress{compassId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->compassId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->calStatus:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->attempt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", completionPct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionPct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", completionMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->completionMask:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", directionX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", directionY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", directionZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/MagCalProgress;->directionZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
