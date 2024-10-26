.class public final Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;
.super Ljava/lang/Object;
.source "GoproHeartbeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private captureMode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;",
            ">;"
        }
    .end annotation
.end field

.field private flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeatFlags;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeatStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat;
    .locals 5

    .line 242
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->captureMode:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$1;)V

    return-object v0
.end method

.method public final captureMode(Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;
    .locals 0

    .line 189
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->captureMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final captureMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current capture\n                mode."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 181
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->captureMode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final captureMode(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;"
        }
    .end annotation

    .line 203
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->captureMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs captureMode([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;
    .locals 0

    .line 196
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->captureMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeatFlags;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;
    .locals 0

    .line 224
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeatFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Additional status bits."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeatFlags;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 216
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;"
        }
    .end annotation

    .line 238
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;
    .locals 0

    .line 231
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final status(Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeatStatus;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;
    .locals 0

    .line 153
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeatStatus;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeatStatus;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 145
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final status(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;"
        }
    .end annotation

    .line 167
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs status([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;
    .locals 0

    .line 160
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/GoproHeartbeat$Builder;

    move-result-object p1

    return-object p1
.end method
