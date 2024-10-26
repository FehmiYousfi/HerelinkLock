.class public final Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;
.super Ljava/lang/Object;
.source "UavionixAdsbOutCfgRegistration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x85
    description = "Aircraft Registration."
    id = 0x2714
.end annotation


# instance fields
.field private final registration:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;->registration:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 33
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;
    .locals 1

    const/16 v0, 0x9

    .line 73
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;

    invoke-direct {v0, p0}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x9

    .line 78
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    iget-object p0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;->registration:Ljava/lang/String;

    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v1
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

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;

    .line 56
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;->registration:Ljava/lang/String;

    iget-object p1, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;->registration:Ljava/lang/String;

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

    .line 63
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;->registration:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    return v1
.end method

.method public final registration()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x9
        description = "Aircraft Registration (ASCII string A-Z, 0-9\n                only), e.g. \"N8644B \". Trailing spaces (0x20) only. This is null-terminated."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 48
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;->registration:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UavionixAdsbOutCfgRegistration{registration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;->registration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method