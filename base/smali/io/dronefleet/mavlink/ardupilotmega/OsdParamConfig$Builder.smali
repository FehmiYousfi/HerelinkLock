.class public final Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
.super Ljava/lang/Object;
.source "OsdParamConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private configType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;",
            ">;"
        }
    .end annotation
.end field

.field private increment:F

.field private maxValue:F

.field private minValue:F

.field private osdIndex:I

.field private osdScreen:I

.field private paramId:Ljava/lang/String;

.field private requestId:J

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;
    .locals 14

    .line 452
    new-instance v13, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->targetComponent:I

    iget-wide v3, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->requestId:J

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->osdScreen:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->osdIndex:I

    iget-object v7, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->paramId:Ljava/lang/String;

    iget-object v8, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->minValue:F

    iget v10, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->maxValue:F

    iget v11, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->increment:F

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;-><init>(IIJIILjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;FFFLio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$1;)V

    return-object v13
.end method

.method public final configType(Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 0

    .line 395
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->configType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final configType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Config type."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 387
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final configType(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;"
        }
    .end annotation

    .line 409
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->configType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs configType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 0

    .line 402
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->configType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final increment(F)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter increment."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 447
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->increment:F

    return-object p0
.end method

.method public final maxValue(F)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter maximum value."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 434
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->maxValue:F

    return-object p0
.end method

.method public final minValue(F)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter minimum value."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 421
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->minValue:F

    return-object p0
.end method

.method public final osdIndex(I)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter display index."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 354
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->osdIndex:I

    return-object p0
.end method

.method public final osdScreen(I)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter screen index."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 341
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->osdScreen:I

    return-object p0
.end method

.method public final paramId(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Onboard parameter id, terminated by NULL if the\n                length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte\n                if the length is exactly 16 chars - applications have to provide 16+1 bytes storage\n                if the ID is stored as string"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 373
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->paramId:Ljava/lang/String;

    return-object p0
.end method

.method public final requestId(J)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID - copied to reply."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 328
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->requestId:J

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 315
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 302
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;->targetSystem:I

    return-object p0
.end method
