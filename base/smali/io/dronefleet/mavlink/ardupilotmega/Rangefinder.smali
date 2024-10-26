.class public final Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;
.super Ljava/lang/Object;
.source "Rangefinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/Rangefinder$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x53
    description = "Rangefinder reporting."
    id = 0xad
.end annotation


# instance fields
.field private final distance:F

.field private final voltage:F


# direct methods
.method private constructor <init>(FF)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->distance:F

    .line 28
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->voltage:F

    return-void
.end method

.method synthetic constructor <init>(FFLio/dronefleet/mavlink/ardupilotmega/Rangefinder$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;-><init>(FF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/Rangefinder$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 36
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;
    .locals 2

    .line 88
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v0

    .line 89
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result p0

    .line 90
    new-instance v1, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;

    invoke-direct {v1, v0, p0}, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;-><init>(FF)V

    return-object v1
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x8

    .line 94
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->distance:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 96
    iget p0, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->voltage:F

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final distance()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 48
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->distance:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;

    .line 68
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->distance:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->distance:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 69
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->voltage:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->voltage:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 76
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->distance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 77
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->voltage:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rangefinder{distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->distance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", voltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->voltage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final voltage()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Raw voltage if available, zero otherwise."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 60
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Rangefinder;->voltage:F

    return v0
.end method
