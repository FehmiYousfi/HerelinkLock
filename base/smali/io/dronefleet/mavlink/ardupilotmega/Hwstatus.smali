.class public final Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;
.super Ljava/lang/Object;
.source "Hwstatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/Hwstatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x15
    description = "Status of key hardware."
    id = 0xa5
.end annotation


# instance fields
.field private final i2cerr:I

.field private final vcc:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->vcc:I

    .line 28
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->i2cerr:I

    return-void
.end method

.method synthetic constructor <init>(IILio/dronefleet/mavlink/ardupilotmega/Hwstatus$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;-><init>(II)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/Hwstatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 36
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;
    .locals 2

    .line 88
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 89
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 90
    new-instance v1, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;

    invoke-direct {v1, v0, p0}, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;-><init>(II)V

    return-object v1
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x3

    .line 94
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->vcc:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 96
    iget p0, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->i2cerr:I

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
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;

    .line 68
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->vcc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->vcc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 69
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->i2cerr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->i2cerr:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->vcc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 77
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->i2cerr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final i2cerr()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "I2C error count."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 60
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->i2cerr:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hwstatus{vcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->vcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", i2cerr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->i2cerr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vcc()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Board voltage."
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 48
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;->vcc:I

    return v0
.end method
