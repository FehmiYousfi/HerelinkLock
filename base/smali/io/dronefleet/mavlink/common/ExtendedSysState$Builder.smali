.class public final Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;
.super Ljava/lang/Object;
.source "ExtendedSysState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ExtendedSysState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private landedState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;"
        }
    .end annotation
.end field

.field private vtolState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavVtolState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ExtendedSysState;
    .locals 4

    .line 191
    new-instance v0, Lio/dronefleet/mavlink/common/ExtendedSysState;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;->vtolState:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/common/ExtendedSysState;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/ExtendedSysState$1;)V

    return-object v0
.end method

.method public final landedState(Lio/dronefleet/mavlink/common/MavLandedState;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;
    .locals 0

    .line 173
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;->landedState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final landedState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The landed state. Is\n                set to MAV_LANDED_STATE_UNDEFINED if landed state is unknown."
        enumType = Lio/dronefleet/mavlink/common/MavLandedState;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 165
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final landedState(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;"
        }
    .end annotation

    .line 187
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;->landedState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs landedState([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;
    .locals 0

    .line 180
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;->landedState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final vtolState(Lio/dronefleet/mavlink/common/MavVtolState;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;
    .locals 0

    .line 135
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;->vtolState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final vtolState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavVtolState;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The VTOL state if\n                applicable. Is set to MAV_VTOL_STATE_UNDEFINED if UAV is not in VTOL configuration."
        enumType = Lio/dronefleet/mavlink/common/MavVtolState;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 126
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;->vtolState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final vtolState(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;"
        }
    .end annotation

    .line 151
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;->vtolState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs vtolState([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;
    .locals 0

    .line 143
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;->vtolState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ExtendedSysState$Builder;

    move-result-object p1

    return-object p1
.end method
