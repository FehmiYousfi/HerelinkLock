.class public final Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;
.super Ljava/lang/Object;
.source "IcarousHeartbeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/icarous/IcarousHeartbeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousFmsState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/icarous/IcarousHeartbeat;
    .locals 3

    .line 123
    new-instance v0, Lio/dronefleet/mavlink/icarous/IcarousHeartbeat;

    iget-object v1, p0, Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dronefleet/mavlink/icarous/IcarousHeartbeat;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$1;)V

    return-object v0
.end method

.method public final status(Lio/dronefleet/mavlink/icarous/IcarousFmsState;)Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;
    .locals 0

    .line 105
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/icarous/IcarousFmsState;",
            ">;)",
            "Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "See the FMS_STATE enum."
        enumType = Lio/dronefleet/mavlink/icarous/IcarousFmsState;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 97
    iput-object p1, p0, Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final status(Ljava/util/Collection;)Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs status([Ljava/lang/Enum;)Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;
    .locals 0

    .line 112
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/icarous/IcarousHeartbeat$Builder;

    move-result-object p1

    return-object p1
.end method
