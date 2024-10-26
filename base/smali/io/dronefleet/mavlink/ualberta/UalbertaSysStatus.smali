.class public final Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;
.super Ljava/lang/Object;
.source "UalbertaSysStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xf
    description = "System status specific to ualberta uav"
    id = 0xde
.end annotation


# instance fields
.field private final mode:I

.field private final navMode:I

.field private final pilot:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->mode:I

    .line 30
    iput p2, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->navMode:I

    .line 31
    iput p3, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->pilot:I

    return-void
.end method

.method synthetic constructor <init>(IIILio/dronefleet/mavlink/ualberta/UalbertaSysStatus$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;-><init>(III)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;
    .locals 3

    .line 106
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 107
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 108
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 109
    new-instance v2, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;

    invoke-direct {v2, v0, v1, p0}, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;-><init>(III)V

    return-object v2
.end method

.method public static serialize(Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x3

    .line 113
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 114
    iget v1, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->mode:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 115
    iget v1, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->navMode:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 116
    iget p0, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->pilot:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

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

    if-eqz p1, :cond_5

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;

    .line 83
    iget v2, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->mode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 84
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->navMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->navMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 85
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->pilot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->pilot:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 92
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 93
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->navMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 94
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->pilot:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final mode()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System mode, see UALBERTA_AUTOPILOT_MODE ENUM"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 51
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->mode:I

    return v0
.end method

.method public final navMode()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Navigation mode, see UALBERTA_NAV_MODE ENUM"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 63
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->navMode:I

    return v0
.end method

.method public final pilot()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pilot mode, see UALBERTA_PILOT_MODE"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 75
    iget v0, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->pilot:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UalbertaSysStatus{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", navMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->navMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pilot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;->pilot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
