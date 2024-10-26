.class public final Lio/dronefleet/mavlink/ardupilotmega/Deepstall;
.super Ljava/lang/Object;
.source "Deepstall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x78
    description = "Deepstall path planning."
    id = 0xc3
.end annotation


# instance fields
.field private final altitude:F

.field private final arcEntryLat:I

.field private final arcEntryLon:I

.field private final crossTrackError:F

.field private final expectedTravelDistance:F

.field private final landingLat:I

.field private final landingLon:I

.field private final pathLat:I

.field private final pathLon:I

.field private final stage:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/DeepstallStage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IIIIIIFFFLio/dronefleet/mavlink/util/EnumValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIFFF",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/DeepstallStage;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLat:I

    .line 49
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLon:I

    .line 50
    iput p3, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLat:I

    .line 51
    iput p4, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLon:I

    .line 52
    iput p5, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLat:I

    .line 53
    iput p6, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLon:I

    .line 54
    iput p7, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->altitude:F

    .line 55
    iput p8, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->expectedTravelDistance:F

    .line 56
    iput p9, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->crossTrackError:F

    .line 57
    iput-object p10, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->stage:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(IIIIIIFFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/ardupilotmega/Deepstall$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p10}, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;-><init>(IIIIIIFFFLio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 65
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/Deepstall;
    .locals 11

    .line 248
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 249
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 250
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 251
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 252
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 253
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 254
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 255
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 256
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 257
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/DeepstallStage;

    const/4 v10, 0x1

    invoke-static {v0, p0, v10}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v10

    .line 258
    new-instance p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;-><init>(IIIIIIFFFLio/dronefleet/mavlink/util/EnumValue;)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/Deepstall;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x25

    .line 262
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 263
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 264
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 265
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 266
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 267
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLat:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 268
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLon:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 269
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->altitude:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 270
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->expectedTravelDistance:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 271
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->crossTrackError:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 272
    const-class v1, Lio/dronefleet/mavlink/ardupilotmega/DeepstallStage;

    iget-object p0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->stage:Lio/dronefleet/mavlink/util/EnumValue;

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
.method public final altitude()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 157
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->altitude:F

    return v0
.end method

.method public final arcEntryLat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Arc entry point, latitude."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 132
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLat:I

    return v0
.end method

.method public final arcEntryLon()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Arc entry point, longitude."
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 145
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLon:I

    return v0
.end method

.method public final crossTrackError()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Deepstall cross track error (only\n                valid when in DEEPSTALL_STAGE_LAND)."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 183
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->crossTrackError:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 203
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;

    .line 204
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 205
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 206
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 207
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 208
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 209
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLon:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 210
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->altitude:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->altitude:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 211
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->expectedTravelDistance:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->expectedTravelDistance:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 212
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->crossTrackError:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->crossTrackError:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 213
    :cond_a
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->stage:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->stage:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    :goto_0
    return v1
.end method

.method public final expectedTravelDistance()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance the aircraft\n                expects to travel during the deepstall."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 170
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->expectedTravelDistance:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 220
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 221
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 222
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 223
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 224
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 225
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 226
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->altitude:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 227
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->expectedTravelDistance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 228
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->crossTrackError:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 229
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->stage:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final landingLat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Landing latitude."
        position = 0x1
        signed = true
        unitSize = 0x4
    .end annotation

    .line 78
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLat:I

    return v0
.end method

.method public final landingLon()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Landing longitude."
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 91
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLon:I

    return v0
.end method

.method public final pathLat()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Final heading start point,\n                latitude."
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 105
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLat:I

    return v0
.end method

.method public final pathLon()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Final heading start point,\n                longitude."
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 119
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLon:I

    return v0
.end method

.method public final stage()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/DeepstallStage;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Deepstall stage."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/DeepstallStage;
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 196
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->stage:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deepstall{landingLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", landingLon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->landingLon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pathLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pathLon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->pathLon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arcEntryLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arcEntryLon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->arcEntryLon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->altitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", expectedTravelDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->expectedTravelDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", crossTrackError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->crossTrackError:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", stage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;->stage:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
