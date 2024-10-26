.class public final Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;
.super Ljava/lang/Object;
.source "CameraStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/CameraStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private camIdx:I

.field private eventId:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/CameraStatusTypes;",
            ">;"
        }
    .end annotation
.end field

.field private imgIdx:I

.field private p1:F

.field private p2:F

.field private p3:F

.field private p4:F

.field private targetSystem:I

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/CameraStatus;
    .locals 12

    .line 415
    new-instance v11, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->targetSystem:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->camIdx:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->imgIdx:I

    iget-object v5, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->eventId:Lio/dronefleet/mavlink/util/EnumValue;

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->p1:F

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->p2:F

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->p3:F

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->p4:F

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus;-><init>(Ljava/math/BigInteger;IIILio/dronefleet/mavlink/util/EnumValue;FFFFLio/dronefleet/mavlink/ardupilotmega/CameraStatus$1;)V

    return-object v11
.end method

.method public final camIdx(I)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Camera ID."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 306
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->camIdx:I

    return-object p0
.end method

.method public final eventId(Lio/dronefleet/mavlink/ardupilotmega/CameraStatusTypes;)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;
    .locals 0

    .line 341
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->eventId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final eventId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/CameraStatusTypes;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Event type."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/CameraStatusTypes;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 333
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->eventId:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final eventId(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;"
        }
    .end annotation

    .line 355
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->eventId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs eventId([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;
    .locals 0

    .line 348
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->eventId(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final imgIdx(I)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Image index."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 319
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->imgIdx:I

    return-object p0
.end method

.method public final p1(F)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 1 (meaning depends on event_id, see\n                CAMERA_STATUS_TYPES enum)."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 368
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->p1:F

    return-object p0
.end method

.method public final p2(F)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 2 (meaning depends on event_id, see\n                CAMERA_STATUS_TYPES enum)."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 382
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->p2:F

    return-object p0
.end method

.method public final p3(F)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 3 (meaning depends on event_id, see\n                CAMERA_STATUS_TYPES enum)."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 396
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->p3:F

    return-object p0
.end method

.method public final p4(F)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter 4 (meaning depends on event_id, see\n                CAMERA_STATUS_TYPES enum)."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 410
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->p4:F

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 293
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->targetSystem:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Image timestamp (since UNIX epoch,\n                according to camera clock)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 280
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/CameraStatus$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
