.class public final Lio/dronefleet/mavlink/slugs/ControlSurface;
.super Ljava/lang/Object;
.source "ControlSurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x71
    description = "Control for surface; pending and order to origin."
    id = 0xb9
.end annotation


# instance fields
.field private final bcontrol:F

.field private final idsurface:I

.field private final mcontrol:F

.field private final target:I


# direct methods
.method private constructor <init>(IIFF)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->target:I

    .line 32
    iput p2, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->idsurface:I

    .line 33
    iput p3, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->mcontrol:F

    .line 34
    iput p4, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->bcontrol:F

    return-void
.end method

.method synthetic constructor <init>(IIFFLio/dronefleet/mavlink/slugs/ControlSurface$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/slugs/ControlSurface;-><init>(IIFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 42
    new-instance v0, Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/slugs/ControlSurface$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/slugs/ControlSurface;
    .locals 4

    .line 125
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v0

    .line 126
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v1

    .line 127
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 128
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 129
    new-instance v3, Lio/dronefleet/mavlink/slugs/ControlSurface;

    invoke-direct {v3, v2, p0, v0, v1}, Lio/dronefleet/mavlink/slugs/ControlSurface;-><init>(IIFF)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/slugs/ControlSurface;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xa

    .line 133
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 134
    iget v1, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->mcontrol:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 135
    iget v1, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->bcontrol:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 136
    iget v1, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->target:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 137
    iget p0, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->idsurface:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final bcontrol()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Order to origin"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 91
    iget v0, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->bcontrol:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/slugs/ControlSurface;

    .line 99
    iget v2, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->target:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/ControlSurface;->target:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 100
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->idsurface:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/ControlSurface;->idsurface:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 101
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->mcontrol:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/ControlSurface;->mcontrol:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 102
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->bcontrol:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/slugs/ControlSurface;->bcontrol:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 109
    iget v0, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->target:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 110
    iget v0, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->idsurface:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 111
    iget v0, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->mcontrol:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 112
    iget v0, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->bcontrol:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final idsurface()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ID control surface send 0: throttle 1: aileron 2:\n                elevator 3: rudder"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 67
    iget v0, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->idsurface:I

    return v0
.end method

.method public final mcontrol()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pending"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 79
    iget v0, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->mcontrol:F

    return v0
.end method

.method public final target()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system setting the commands"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 54
    iget v0, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->target:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControlSurface{target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->target:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", idsurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->idsurface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mcontrol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->mcontrol:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bcontrol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/ControlSurface;->bcontrol:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
