.class public final Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
.super Ljava/lang/Object;
.source "Heartbeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/minimal/Heartbeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private autopilot:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
            ">;"
        }
    .end annotation
.end field

.field private baseMode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;"
        }
    .end annotation
.end field

.field private customMode:J

.field private mavlinkVersion:I

.field private systemStatus:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavState;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final autopilot(Lio/dronefleet/mavlink/minimal/MavAutopilot;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0

    .line 289
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->autopilot(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final autopilot(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
            ">;)",
            "Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot type / class. Use\n                MAV_AUTOPILOT_INVALID for components that are not flight controllers."
        enumType = Lio/dronefleet/mavlink/minimal/MavAutopilot;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 280
    iput-object p1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final autopilot(Ljava/util/Collection;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;"
        }
    .end annotation

    .line 305
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->autopilot(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs autopilot([Ljava/lang/Enum;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0

    .line 297
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->autopilot(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final baseMode(Lio/dronefleet/mavlink/minimal/MavModeFlag;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0

    .line 327
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->baseMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final baseMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;)",
            "Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System\n                mode bitmap."
        enumType = Lio/dronefleet/mavlink/minimal/MavModeFlag;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 319
    iput-object p1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final baseMode(Ljava/util/Collection;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;"
        }
    .end annotation

    .line 341
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->baseMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs baseMode([Ljava/lang/Enum;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0

    .line 334
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->baseMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lio/dronefleet/mavlink/minimal/Heartbeat;
    .locals 10

    .line 410
    new-instance v9, Lio/dronefleet/mavlink/minimal/Heartbeat;

    iget-object v1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v2, p0, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p0, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    iget-wide v4, p0, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->customMode:J

    iget-object v6, p0, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->systemStatus:Lio/dronefleet/mavlink/util/EnumValue;

    iget v7, p0, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->mavlinkVersion:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/minimal/Heartbeat;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/minimal/Heartbeat$1;)V

    return-object v9
.end method

.method public final customMode(J)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "A bitfield for use for autopilot-specific\n                flags"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 354
    iput-wide p1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->customMode:J

    return-object p0
.end method

.method public final mavlinkVersion(I)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "MAVLink version, not\n                writable by user, gets added by protocol because of magic data type:\n                uint8_t_mavlink_version"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 405
    iput p1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->mavlinkVersion:I

    return-object p0
.end method

.method public final systemStatus(Lio/dronefleet/mavlink/minimal/MavState;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0

    .line 376
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->systemStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final systemStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavState;",
            ">;)",
            "Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System status flag."
        enumType = Lio/dronefleet/mavlink/minimal/MavState;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 368
    iput-object p1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->systemStatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final systemStatus(Ljava/util/Collection;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;"
        }
    .end annotation

    .line 390
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->systemStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs systemStatus([Ljava/lang/Enum;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0

    .line 383
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->systemStatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type(Lio/dronefleet/mavlink/minimal/MavType;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0

    .line 247
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavType;",
            ">;)",
            "Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vehicle or component type. For a\n                flight controller component the vehicle type (quadrotor, helicopter, etc.). For\n                other components the component type (e.g. camera, gimbal, etc.). This should be used\n                in preference to component id for identifying the component type."
        enumType = Lio/dronefleet/mavlink/minimal/MavType;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 237
    iput-object p1, p0, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type(Ljava/util/Collection;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;"
        }
    .end annotation

    .line 265
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type([Ljava/lang/Enum;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;
    .locals 0

    .line 256
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/minimal/Heartbeat$Builder;

    move-result-object p1

    return-object p1
.end method
