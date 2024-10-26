.class public final Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
.super Ljava/lang/Object;
.source "OsdParamShowConfigReply.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;
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

.field private paramId:Ljava/lang/String;

.field private requestId:J

.field private result:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;
    .locals 11

    .line 370
    new-instance v10, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->requestId:J

    iget-object v3, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->result:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v4, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->paramId:Ljava/lang/String;

    iget-object v5, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->minValue:F

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->maxValue:F

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->increment:F

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;-><init>(JLio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;FFFLio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$1;)V

    return-object v10
.end method

.method public final configType(Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 0

    .line 313
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->configType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final configType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Config type."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 305
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final configType(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;"
        }
    .end annotation

    .line 327
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->configType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs configType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 0

    .line 320
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->configType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final increment(F)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter increment."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 365
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->increment:F

    return-object p0
.end method

.method public final maxValue(F)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter maximum value."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 352
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->maxValue:F

    return-object p0
.end method

.method public final minValue(F)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter minimum value."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 339
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->minValue:F

    return-object p0
.end method

.method public final paramId(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Onboard parameter id, terminated by NULL if the\n                length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte\n                if the length is exactly 16 chars - applications have to provide 16+1 bytes storage\n                if the ID is stored as string"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 291
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->paramId:Ljava/lang/String;

    return-object p0
.end method

.method public final requestId(J)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID - copied from request."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 237
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->requestId:J

    return-object p0
.end method

.method public final result(Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigError;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 0

    .line 259
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->result(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final result(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigError;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Config error type."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigError;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 251
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->result:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final result(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;"
        }
    .end annotation

    .line 273
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->result(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs result([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 0

    .line 266
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;->result(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;

    move-result-object p1

    return-object p1
.end method
