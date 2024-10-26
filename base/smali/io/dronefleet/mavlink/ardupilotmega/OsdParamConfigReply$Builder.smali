.class public final Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;
.super Ljava/lang/Object;
.source "OsdParamConfigReply.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
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

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply;
    .locals 5

    .line 158
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;->requestId:J

    iget-object v3, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;->result:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply;-><init>(JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$1;)V

    return-object v0
.end method

.method public final requestId(J)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID - copied from request."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 118
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;->requestId:J

    return-object p0
.end method

.method public final result(Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigError;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;
    .locals 0

    .line 140
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;->result(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final result(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigError;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Config error type."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigError;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 132
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;->result:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final result(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;"
        }
    .end annotation

    .line 154
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;->result(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs result([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;
    .locals 0

    .line 147
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;->result(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigReply$Builder;

    move-result-object p1

    return-object p1
.end method
