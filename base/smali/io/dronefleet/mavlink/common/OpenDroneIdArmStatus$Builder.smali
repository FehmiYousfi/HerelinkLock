.class public final Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;
.super Ljava/lang/Object;
.source "OpenDroneIdArmStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private error:Ljava/lang/String;

.field private status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidArmStatus;",
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
.method public final build()Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;
    .locals 4

    .line 166
    new-instance v0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;->error:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$1;)V

    return-object v0
.end method

.method public final error(Ljava/lang/String;)Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x32
        description = "Text error message, should be empty if status is\n                good to arm. Fill with nulls in unused portion."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 161
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;->error:Ljava/lang/String;

    return-object p0
.end method

.method public final status(Lio/dronefleet/mavlink/common/MavOdidArmStatus;)Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;
    .locals 0

    .line 133
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavOdidArmStatus;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status level indicating\n                if arming is allowed."
        enumType = Lio/dronefleet/mavlink/common/MavOdidArmStatus;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 125
    iput-object p1, p0, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final status(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;"
        }
    .end annotation

    .line 147
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs status([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;
    .locals 0

    .line 140
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/OpenDroneIdArmStatus$Builder;

    move-result-object p1

    return-object p1
.end method
