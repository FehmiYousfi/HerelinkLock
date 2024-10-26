.class public final Lio/dronefleet/mavlink/common/OpenDroneIdSystem;
.super Ljava/lang/Object;
.source "OpenDroneIdSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x4d
    description = "Data for filling the OpenDroneID System message. The System Message\n                contains general system information including the operator location/altitude and\n                possible aircraft group and/or category/class information."
    id = 0x3268
    workInProgress = true
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final areaCeiling:F

.field private final areaCount:I

.field private final areaFloor:F

.field private final areaRadius:I

.field private final categoryEu:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidCategoryEu;",
            ">;"
        }
    .end annotation
.end field

.field private final classEu:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidClassEu;",
            ">;"
        }
    .end annotation
.end field

.field private final classificationType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidClassificationType;",
            ">;"
        }
    .end annotation
.end field

.field private final idOrMac:[B

.field private final operatorAltitudeGeo:F

.field private final operatorLatitude:I

.field private final operatorLocationType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidOperatorLocationType;",
            ">;"
        }
    .end annotation
.end field

.field private final operatorLongitude:I

.field private final targetComponent:I

.field private final targetSystem:I

.field private final timestamp:J


# direct methods
.method private constructor <init>(II[BLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidOperatorLocationType;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidClassificationType;",
            ">;IIIIFF",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidCategoryEu;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidClassEu;",
            ">;FJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 72
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetSystem:I

    move v1, p2

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetComponent:I

    move-object v1, p3

    .line 74
    iput-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->idOrMac:[B

    move-object v1, p4

    .line 75
    iput-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLocationType:Lio/dronefleet/mavlink/util/EnumValue;

    move-object v1, p5

    .line 76
    iput-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classificationType:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p6

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLatitude:I

    move v1, p7

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLongitude:I

    move v1, p8

    .line 79
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCount:I

    move v1, p9

    .line 80
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaRadius:I

    move v1, p10

    .line 81
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCeiling:F

    move v1, p11

    .line 82
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaFloor:F

    move-object v1, p12

    .line 83
    iput-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->categoryEu:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v1, p13

    .line 84
    iput-object v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classEu:Lio/dronefleet/mavlink/util/EnumValue;

    move/from16 v1, p14

    .line 85
    iput v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorAltitudeGeo:F

    move-wide/from16 v1, p15

    .line 86
    iput-wide v1, v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->timestamp:J

    return-void
.end method

.method synthetic constructor <init>(II[BLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FJLio/dronefleet/mavlink/common/OpenDroneIdSystem$1;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p16}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;-><init>(II[BLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FJ)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 94
    new-instance v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/OpenDroneIdSystem;
    .locals 18

    move-object/from16 v0, p0

    .line 364
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 365
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 366
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 367
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 368
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v15

    .line 369
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v16

    .line 370
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 371
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 372
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 373
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/16 v1, 0x14

    .line 374
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v4

    .line 375
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidOperatorLocationType;

    const/4 v14, 0x1

    invoke-static {v1, v0, v14}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    .line 376
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidClassificationType;

    invoke-static {v1, v0, v14}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v6

    .line 377
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidCategoryEu;

    invoke-static {v1, v0, v14}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v13

    .line 378
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidClassEu;

    invoke-static {v1, v0, v14}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v14

    .line 379
    new-instance v0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;

    move-object v1, v0

    invoke-direct/range {v1 .. v17}, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;-><init>(II[BLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FJ)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/OpenDroneIdSystem;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x36

    .line 383
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 384
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLatitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 385
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLongitude:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 386
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCeiling:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 387
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaFloor:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 388
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorAltitudeGeo:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 389
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->timestamp:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 390
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCount:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 391
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaRadius:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 392
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 393
    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 394
    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->idOrMac:[B

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 395
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidOperatorLocationType;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLocationType:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 396
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidClassificationType;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classificationType:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_1
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 397
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidCategoryEu;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->categoryEu:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_2
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 398
    const-class v1, Lio/dronefleet/mavlink/common/MavOdidClassEu;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classEu:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_3
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final areaCeiling()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Area Operations\n                Ceiling relative to WGS84. If unknown: -1000 m."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 227
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCeiling:F

    return v0
.end method

.method public final areaCount()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of aircraft in the area, group or\n                formation (default 1)."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 201
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCount:I

    return v0
.end method

.method public final areaFloor()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Area Operations Floor\n                relative to WGS84. If unknown: -1000 m."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 240
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaFloor:F

    return v0
.end method

.method public final areaRadius()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Radius of the cylindrical area of\n                the group or formation (default 0)."
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 214
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaRadius:I

    return v0
.end method

.method public final categoryEu()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidCategoryEu;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "When\n                classification_type is MAV_ODID_CLASSIFICATION_TYPE_EU, specifies the category of\n                the UA."
        enumType = Lio/dronefleet/mavlink/common/MavOdidCategoryEu;
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 256
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->categoryEu:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final classEu()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidClassEu;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "When classification_type\n                is MAV_ODID_CLASSIFICATION_TYPE_EU, specifies the class of the UA."
        enumType = Lio/dronefleet/mavlink/common/MavOdidClassEu;
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 271
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classEu:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final classificationType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidClassificationType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Specifies the classification type of the UA."
        enumType = Lio/dronefleet/mavlink/common/MavOdidClassificationType;
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 160
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classificationType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 304
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;

    .line 305
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 306
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 307
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->idOrMac:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->idOrMac:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 308
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLocationType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLocationType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 309
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classificationType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classificationType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 310
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLatitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLatitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 311
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLongitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLongitude:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 312
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 313
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaRadius:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaRadius:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 314
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCeiling:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCeiling:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 315
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaFloor:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaFloor:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 316
    :cond_c
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->categoryEu:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->categoryEu:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 317
    :cond_d
    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classEu:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classEu:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 318
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorAltitudeGeo:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorAltitudeGeo:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 319
    :cond_f
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v1

    :cond_10
    return v0

    :cond_11
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 326
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 327
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 328
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->idOrMac:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 329
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLocationType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 330
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classificationType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 331
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLatitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 332
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLongitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 333
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 334
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaRadius:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 335
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCeiling:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 336
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaFloor:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 337
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->categoryEu:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 338
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classEu:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 339
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorAltitudeGeo:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 340
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final idOrMac()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x14
        description = "Only used for drone ID data received from\n                other UAs. See detailed description at\n                https://mavlink.io/en/services/opendroneid.html."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 134
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->idOrMac:[B

    return-object v0
.end method

.method public final operatorAltitudeGeo()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Geodetic\n                altitude of the operator relative to WGS84. If unknown: -1000 m."
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 284
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorAltitudeGeo:F

    return v0
.end method

.method public final operatorLatitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude of the\n                operator. If unknown: 0 (both Lat/Lon)."
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 174
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLatitude:I

    return v0
.end method

.method public final operatorLocationType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidOperatorLocationType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Specifies the operator location type."
        enumType = Lio/dronefleet/mavlink/common/MavOdidOperatorLocationType;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 147
    iget-object v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLocationType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final operatorLongitude()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude of\n                the operator. If unknown: 0 (both Lat/Lon)."
        position = 0x8
        signed = true
        unitSize = 0x4
    .end annotation

    .line 188
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLongitude:I

    return v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID (0 for broadcast)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 118
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID (0 for broadcast)."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 106
    iget v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetSystem:I

    return v0
.end method

.method public final timestamp()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "32 bit Unix Timestamp in seconds since\n                00:00:00 01/01/2019."
        position = 0x10
        unitSize = 0x4
    .end annotation

    .line 297
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->timestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenDroneIdSystem{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", idOrMac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->idOrMac:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", operatorLocationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLocationType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", classificationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classificationType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", operatorLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLatitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operatorLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorLongitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", areaCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", areaRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", areaCeiling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaCeiling:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", areaFloor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->areaFloor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", categoryEu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->categoryEu:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", classEu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->classEu:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", operatorAltitudeGeo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->operatorAltitudeGeo:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdSystem;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
