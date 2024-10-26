.class public final Lio/dronefleet/mavlink/common/SafetySetAllowedArea;
.super Ljava/lang/Object;
.source "SafetySetAllowedArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xf
    description = "Set a safety zone (volume), which is defined by two corners of a cube. This\n                message can be used to tell the MAV which setpoints/waypoints to accept and which to\n                reject. Safety areas are often enforced by national or competition regulations."
    id = 0x36
.end annotation


# instance fields
.field private final frame:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final p1x:F

.field private final p1y:F

.field private final p1z:F

.field private final p2x:F

.field private final p2y:F

.field private final p2z:F

.field private final targetComponent:I

.field private final targetSystem:I


# direct methods
.method private constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;FFFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;FFFFFF)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetSystem:I

    .line 50
    iput p2, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetComponent:I

    .line 51
    iput-object p3, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    .line 52
    iput p4, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1x:F

    .line 53
    iput p5, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1y:F

    .line 54
    iput p6, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1z:F

    .line 55
    iput p7, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2x:F

    .line 56
    iput p8, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2y:F

    .line 57
    iput p9, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2z:F

    return-void
.end method

.method synthetic constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;FFFFFFLio/dronefleet/mavlink/common/SafetySetAllowedArea$1;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p9}, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;-><init>(IILio/dronefleet/mavlink/util/EnumValue;FFFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 65
    new-instance v0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/SafetySetAllowedArea;
    .locals 10

    .line 225
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 226
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 227
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 228
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 229
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 230
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 231
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 232
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 233
    const-class v0, Lio/dronefleet/mavlink/common/MavFrame;

    const/4 v3, 0x1

    invoke-static {v0, p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v3

    .line 234
    new-instance p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;-><init>(IILio/dronefleet/mavlink/util/EnumValue;FFFFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/SafetySetAllowedArea;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x1b

    .line 238
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 239
    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1x:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 240
    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1y:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 241
    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1z:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 242
    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2x:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 243
    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2y:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 244
    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2z:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 245
    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 246
    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 247
    const-class v1, Lio/dronefleet/mavlink/common/MavFrame;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result p0

    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 183
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;

    .line 184
    iget v2, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 185
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 186
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 187
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 188
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 189
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 190
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 191
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 192
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2z:F

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

.method public final frame()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Coordinate frame. Can be either\n                global, GPS, right-handed with Z axis up or local, right handed, Z axis down."
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 104
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 199
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 200
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 201
    iget-object v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 202
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 203
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 204
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 205
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 206
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 207
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final p1x()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "x position 1 / Latitude 1"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 116
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1x:F

    return v0
.end method

.method public final p1y()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "y position 1 / Longitude 1"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 128
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1y:F

    return v0
.end method

.method public final p1z()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "z position 1 / Altitude 1"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 140
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1z:F

    return v0
.end method

.method public final p2x()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "x position 2 / Latitude 2"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 152
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2x:F

    return v0
.end method

.method public final p2y()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "y position 2 / Longitude 2"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 164
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2y:F

    return v0
.end method

.method public final p2z()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "z position 2 / Altitude 2"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 176
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2z:F

    return v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 89
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 77
    iget v0, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetySetAllowedArea{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", p1x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", p1y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", p1z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p1z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", p2x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", p2y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", p2z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;->p2z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
