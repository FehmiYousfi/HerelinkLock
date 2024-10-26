.class public final Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
.super Ljava/lang/Object;
.source "AutopilotVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/AutopilotVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private boardVersion:J

.field private capabilities:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavProtocolCapability;",
            ">;"
        }
    .end annotation
.end field

.field private flightCustomVersion:[B

.field private flightSwVersion:J

.field private middlewareCustomVersion:[B

.field private middlewareSwVersion:J

.field private osCustomVersion:[B

.field private osSwVersion:J

.field private productId:I

.field private uid:Ljava/math/BigInteger;

.field private uid2:[B

.field private vendorId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final boardVersion(J)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "HW / board version (last 8 bits should be\n                silicon ID, if any). The first 16 bits of this field specify\n                https://github.com/PX4/PX4-Bootloader/blob/master/board_types.txt"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 444
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->boardVersion:J

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/AutopilotVersion;
    .locals 21

    move-object/from16 v0, p0

    .line 560
    new-instance v19, Lio/dronefleet/mavlink/common/AutopilotVersion;

    move-object/from16 v1, v19

    iget-object v2, v0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->capabilities:Lio/dronefleet/mavlink/util/EnumValue;

    iget-wide v3, v0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->flightSwVersion:J

    iget-wide v5, v0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->middlewareSwVersion:J

    iget-wide v7, v0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->osSwVersion:J

    iget-wide v9, v0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->boardVersion:J

    iget-object v11, v0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->flightCustomVersion:[B

    iget-object v12, v0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->middlewareCustomVersion:[B

    iget-object v13, v0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->osCustomVersion:[B

    iget v14, v0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->vendorId:I

    iget v15, v0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->productId:I

    move-object/from16 v20, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->uid:Ljava/math/BigInteger;

    move-object/from16 v16, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->uid2:[B

    move-object/from16 v17, v1

    const/16 v18, 0x0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lio/dronefleet/mavlink/common/AutopilotVersion;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JJJJ[B[B[BIILjava/math/BigInteger;[BLio/dronefleet/mavlink/common/AutopilotVersion$1;)V

    return-object v19
.end method

.method public final capabilities(Lio/dronefleet/mavlink/common/MavProtocolCapability;)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0

    .line 376
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->capabilities(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final capabilities(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavProtocolCapability;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of capabilities"
        enumType = Lio/dronefleet/mavlink/common/MavProtocolCapability;
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 368
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->capabilities:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final capabilities(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;"
        }
    .end annotation

    .line 390
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->capabilities(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs capabilities([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0

    .line 383
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->capabilities(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flightCustomVersion([B)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8
        description = "Custom version field, commonly the\n                first 8 bytes of the git hash. This is not an unique identifier, but should allow to\n                identify the commit using the main version number even for very large code bases."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 462
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->flightCustomVersion:[B

    return-object p0
.end method

.method public final flightSwVersion(J)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Firmware version number"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 402
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->flightSwVersion:J

    return-object p0
.end method

.method public final middlewareCustomVersion([B)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8
        description = "Custom version field, commonly\n                the first 8 bytes of the git hash. This is not an unique identifier, but should\n                allow to identify the commit using the main version number even for very large code\n                bases."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 481
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->middlewareCustomVersion:[B

    return-object p0
.end method

.method public final middlewareSwVersion(J)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Middleware version number"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 415
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->middlewareSwVersion:J

    return-object p0
.end method

.method public final osCustomVersion([B)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8
        description = "Custom version field, commonly the\n                first 8 bytes of the git hash. This is not an unique identifier, but should allow to\n                identify the commit using the main version number even for very large code bases."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 499
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->osCustomVersion:[B

    return-object p0
.end method

.method public final osSwVersion(J)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Operating system version number"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 428
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->osSwVersion:J

    return-object p0
.end method

.method public final productId(I)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ID of the product"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 525
    iput p1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->productId:I

    return-object p0
.end method

.method public final uid(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "UID if provided by hardware (see uid2)"
        position = 0xb
        unitSize = 0x8
    .end annotation

    .line 538
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->uid:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final uid2([B)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x12
        description = "UID if provided by hardware (supersedes the uid\n                field. If this is non-zero, use this field, otherwise use uid)"
        extension = true
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 555
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->uid2:[B

    return-object p0
.end method

.method public final vendorId(I)Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ID of the board vendor"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 512
    iput p1, p0, Lio/dronefleet/mavlink/common/AutopilotVersion$Builder;->vendorId:I

    return-object p0
.end method
