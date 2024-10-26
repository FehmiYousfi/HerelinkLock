.class public final Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;
.super Ljava/lang/Object;
.source "ScriptCurrent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/paparazzi/ScriptCurrent$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x28
    description = "This message informs about the currently active SCRIPT."
    id = 0xb8
.end annotation


# instance fields
.field private final seq:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;->seq:I

    return-void
.end method

.method synthetic constructor <init>(ILio/dronefleet/mavlink/paparazzi/ScriptCurrent$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;-><init>(I)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/paparazzi/ScriptCurrent$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 33
    new-instance v0, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;
    .locals 1

    .line 70
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 71
    new-instance v0, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;

    invoke-direct {v0, p0}, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;-><init>(I)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;)Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 75
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    iget p0, p0, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;->seq:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

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

    if-eqz p1, :cond_3

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;

    .line 53
    iget v2, p0, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;->seq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;->seq:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 60
    iget v0, p0, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;->seq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    return v1
.end method

.method public final seq()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Active Sequence"
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 45
    iget v0, p0, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;->seq:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScriptCurrent{seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
