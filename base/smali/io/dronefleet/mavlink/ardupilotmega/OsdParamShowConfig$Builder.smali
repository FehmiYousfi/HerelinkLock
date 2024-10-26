.class public final Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;
.super Ljava/lang/Object;
.source "OsdParamShowConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private osdIndex:I

.field private osdScreen:I

.field private requestId:J

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig;
    .locals 9

    .line 238
    new-instance v8, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;->targetComponent:I

    iget-wide v3, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;->requestId:J

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;->osdScreen:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;->osdIndex:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig;-><init>(IIJIILio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$1;)V

    return-object v8
.end method

.method public final osdIndex(I)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter display index."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 233
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;->osdIndex:I

    return-object p0
.end method

.method public final osdScreen(I)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter screen index."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 220
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;->osdScreen:I

    return-object p0
.end method

.method public final requestId(J)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID - copied to reply."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 207
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;->requestId:J

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 194
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 181
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfig$Builder;->targetSystem:I

    return-object p0
.end method
