.class public final Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
.super Ljava/lang/Object;
.source "SafetySetAllowedArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SafetySetAllowedArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private frame:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private p1x:F

.field private p1y:F

.field private p1z:F

.field private p2x:F

.field private p2y:F

.field private p2z:F

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/SafetySetAllowedArea;
    .locals 12

    .line 415
    new-instance v11, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;

    iget v1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    iget v4, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->p1x:F

    iget v5, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->p1y:F

    iget v6, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->p1z:F

    iget v7, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->p2x:F

    iget v8, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->p2y:F

    iget v9, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->p2z:F

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/dronefleet/mavlink/common/SafetySetAllowedArea;-><init>(IILio/dronefleet/mavlink/util/EnumValue;FFFFFFLio/dronefleet/mavlink/common/SafetySetAllowedArea$1;)V

    return-object v11
.end method

.method public final frame(Lio/dronefleet/mavlink/common/MavFrame;)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    .locals 0

    .line 317
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Coordinate frame. Can be either\n                global, GPS, right-handed with Z axis up or local, right handed, Z axis down."
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 308
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final frame(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;"
        }
    .end annotation

    .line 333
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs frame([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    .locals 0

    .line 325
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->frame(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final p1x(F)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "x position 1 / Latitude 1"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 345
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->p1x:F

    return-object p0
.end method

.method public final p1y(F)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "y position 1 / Longitude 1"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 358
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->p1y:F

    return-object p0
.end method

.method public final p1z(F)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "z position 1 / Altitude 1"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 371
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->p1z:F

    return-object p0
.end method

.method public final p2x(F)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "x position 2 / Latitude 2"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 384
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->p2x:F

    return-object p0
.end method

.method public final p2y(F)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "y position 2 / Longitude 2"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 397
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->p2y:F

    return-object p0
.end method

.method public final p2z(F)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "z position 2 / Altitude 2"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 410
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->p2z:F

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 292
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 279
    iput p1, p0, Lio/dronefleet/mavlink/common/SafetySetAllowedArea$Builder;->targetSystem:I

    return-object p0
.end method
