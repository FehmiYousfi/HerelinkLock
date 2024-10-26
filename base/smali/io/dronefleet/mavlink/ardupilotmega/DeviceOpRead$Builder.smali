.class public final Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
.super Ljava/lang/Object;
.source "DeviceOpRead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private address:I

.field private bank:I

.field private bus:I

.field private busname:Ljava/lang/String;

.field private bustype:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/DeviceOpBustype;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field private regstart:I

.field private requestId:J

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final address(I)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bus address."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 385
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->address:I

    return-object p0
.end method

.method public final bank(I)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bank number."
        extension = true
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 439
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->bank:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead;
    .locals 14

    .line 444
    new-instance v13, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->targetComponent:I

    iget-wide v3, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->requestId:J

    iget-object v5, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->bustype:Lio/dronefleet/mavlink/util/EnumValue;

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->bus:I

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->address:I

    iget-object v8, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->busname:Ljava/lang/String;

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->regstart:I

    iget v10, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->count:I

    iget v11, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->bank:I

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead;-><init>(IIJLio/dronefleet/mavlink/util/EnumValue;IILjava/lang/String;IIILio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$1;)V

    return-object v13
.end method

.method public final bus(I)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bus number."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 372
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->bus:I

    return-object p0
.end method

.method public final busname(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x28
        description = "Name of device on bus (for SPI)."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 399
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->busname:Ljava/lang/String;

    return-object p0
.end method

.method public final bustype(Lio/dronefleet/mavlink/ardupilotmega/DeviceOpBustype;)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
    .locals 0

    .line 346
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->bustype(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bustype(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/DeviceOpBustype;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The bus type."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/DeviceOpBustype;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 338
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->bustype:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final bustype(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;"
        }
    .end annotation

    .line 360
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->bustype(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs bustype([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
    .locals 0

    .line 353
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->bustype(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final count(I)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Count of registers to read."
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 425
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->count:I

    return-object p0
.end method

.method public final regstart(I)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "First register to read."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 412
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->regstart:I

    return-object p0
.end method

.method public final requestId(J)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID - copied to reply."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 324
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->requestId:J

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 311
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 298
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpRead$Builder;->targetSystem:I

    return-object p0
.end method
