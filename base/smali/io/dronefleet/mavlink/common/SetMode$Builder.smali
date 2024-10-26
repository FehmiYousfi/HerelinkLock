.class public final Lio/dronefleet/mavlink/common/SetMode$Builder;
.super Ljava/lang/Object;
.source "SetMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SetMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private baseMode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMode;",
            ">;"
        }
    .end annotation
.end field

.field private customMode:J

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final baseMode(Lio/dronefleet/mavlink/common/MavMode;)Lio/dronefleet/mavlink/common/SetMode$Builder;
    .locals 0

    .line 170
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetMode$Builder;->baseMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetMode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final baseMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetMode$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavMode;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SetMode$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The new base mode."
        enumType = Lio/dronefleet/mavlink/common/MavMode;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 162
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SetMode$Builder;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final baseMode(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SetMode$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SetMode$Builder;"
        }
    .end annotation

    .line 184
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetMode$Builder;->baseMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetMode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs baseMode([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SetMode$Builder;
    .locals 0

    .line 177
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SetMode$Builder;->baseMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SetMode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lio/dronefleet/mavlink/common/SetMode;
    .locals 7

    .line 202
    new-instance v6, Lio/dronefleet/mavlink/common/SetMode;

    iget v1, p0, Lio/dronefleet/mavlink/common/SetMode$Builder;->targetSystem:I

    iget-object v2, p0, Lio/dronefleet/mavlink/common/SetMode$Builder;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    iget-wide v3, p0, Lio/dronefleet/mavlink/common/SetMode$Builder;->customMode:J

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/SetMode;-><init>(ILio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/common/SetMode$1;)V

    return-object v6
.end method

.method public final customMode(J)Lio/dronefleet/mavlink/common/SetMode$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The new autopilot-specific mode. This field\n                can be ignored by an autopilot."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 197
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/SetMode$Builder;->customMode:J

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/SetMode$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system setting the mode"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 148
    iput p1, p0, Lio/dronefleet/mavlink/common/SetMode$Builder;->targetSystem:I

    return-object p0
.end method
