.class public final Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
.super Ljava/lang/Object;
.source "GimbalDeviceInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/GimbalDeviceInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private capFlags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;",
            ">;"
        }
    .end annotation
.end field

.field private customCapFlags:I

.field private customName:Ljava/lang/String;

.field private firmwareVersion:J

.field private hardwareVersion:J

.field private modelName:Ljava/lang/String;

.field private pitchMax:F

.field private pitchMin:F

.field private rollMax:F

.field private rollMin:F

.field private timeBootMs:J

.field private uid:Ljava/math/BigInteger;

.field private vendorName:Ljava/lang/String;

.field private yawMax:F

.field private yawMin:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/GimbalDeviceInformation;
    .locals 23

    move-object/from16 v0, p0

    .line 659
    new-instance v21, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;

    move-object/from16 v1, v21

    iget-wide v2, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->timeBootMs:J

    iget-object v4, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->vendorName:Ljava/lang/String;

    iget-object v5, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->modelName:Ljava/lang/String;

    iget-object v6, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->customName:Ljava/lang/String;

    iget-wide v7, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->firmwareVersion:J

    iget-wide v9, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->hardwareVersion:J

    iget-object v11, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->uid:Ljava/math/BigInteger;

    iget-object v12, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->capFlags:Lio/dronefleet/mavlink/util/EnumValue;

    iget v13, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->customCapFlags:I

    iget v14, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->rollMin:F

    iget v15, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->rollMax:F

    move-object/from16 v22, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->pitchMin:F

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->pitchMax:F

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->yawMin:F

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->yawMax:F

    move/from16 v19, v1

    const/16 v20, 0x0

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lio/dronefleet/mavlink/common/GimbalDeviceInformation;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;IFFFFFFLio/dronefleet/mavlink/common/GimbalDeviceInformation$1;)V

    return-object v21
.end method

.method public final capFlags(Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0

    .line 543
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->capFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final capFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of gimbal capability flags."
        enumType = Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 535
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->capFlags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final capFlags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;"
        }
    .end annotation

    .line 557
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->capFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs capFlags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0

    .line 550
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->capFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final customCapFlags(I)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap for use for\n                gimbal-specific capability flags."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 570
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->customCapFlags:I

    return-object p0
.end method

.method public final customName(Ljava/lang/String;)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Custom name of the gimbal given to it by the\n                user."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 476
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->customName:Ljava/lang/String;

    return-object p0
.end method

.method public final firmwareVersion(J)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Version of the gimbal firmware, encoded\n                as: (Dev & 0xff) << 24 | (Patch & 0xff) << 16 | (Minor &\n                0xff) << 8 | (Major & 0xff)."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 492
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->firmwareVersion:J

    return-object p0
.end method

.method public final hardwareVersion(J)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Version of the gimbal hardware, encoded\n                as: (Dev & 0xff) << 24 | (Patch & 0xff) << 16 | (Minor &\n                0xff) << 8 | (Major & 0xff)."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 508
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->hardwareVersion:J

    return-object p0
.end method

.method public final modelName(Ljava/lang/String;)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Name of the gimbal model."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 461
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->modelName:Ljava/lang/String;

    return-object p0
.end method

.method public final pitchMax(F)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum hardware pitch angle (positive:\n                up, negative: down)"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 626
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->pitchMax:F

    return-object p0
.end method

.method public final pitchMin(F)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum hardware pitch angle (positive:\n                up, negative: down)"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 612
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->pitchMin:F

    return-object p0
.end method

.method public final rollMax(F)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum hardware roll angle (positive:\n                rolling to the right, negative: rolling to the left)"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 598
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->rollMax:F

    return-object p0
.end method

.method public final rollMin(F)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum hardware roll angle (positive:\n                rolling to the right, negative: rolling to the left)"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 584
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->rollMin:F

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 433
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final uid(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "UID of gimbal hardware (0 if unknown)."
        position = 0x7
        unitSize = 0x8
    .end annotation

    .line 521
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->uid:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final vendorName(Ljava/lang/String;)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Name of the gimbal vendor."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 447
    iput-object p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->vendorName:Ljava/lang/String;

    return-object p0
.end method

.method public final yawMax(F)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum hardware yaw angle (positive: to\n                the right, negative: to the left)"
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 654
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->yawMax:F

    return-object p0
.end method

.method public final yawMin(F)Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Minimum hardware yaw angle (positive: to\n                the right, negative: to the left)"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 640
    iput p1, p0, Lio/dronefleet/mavlink/common/GimbalDeviceInformation$Builder;->yawMin:F

    return-object p0
.end method
