.class public final Lio/dronefleet/mavlink/common/FenceStatus$Builder;
.super Ljava/lang/Object;
.source "FenceStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/FenceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private breachCount:I

.field private breachMitigation:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/FenceMitigate;",
            ">;"
        }
    .end annotation
.end field

.field private breachStatus:I

.field private breachTime:J

.field private breachType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/FenceBreach;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final breachCount(I)Lio/dronefleet/mavlink/common/FenceStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of fence breaches."
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 204
    iput p1, p0, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachCount:I

    return-object p0
.end method

.method public final breachMitigation(Lio/dronefleet/mavlink/common/FenceMitigate;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;
    .locals 0

    .line 276
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachMitigation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final breachMitigation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/FenceMitigate;",
            ">;)",
            "Lio/dronefleet/mavlink/common/FenceStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Active action to\n                prevent fence breach"
        enumType = Lio/dronefleet/mavlink/common/FenceMitigate;
        extension = true
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 268
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachMitigation:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final breachMitigation(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/FenceStatus$Builder;"
        }
    .end annotation

    .line 290
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachMitigation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs breachMitigation([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;
    .locals 0

    .line 283
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachMitigation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final breachStatus(I)Lio/dronefleet/mavlink/common/FenceStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Breach status (0 if currently inside fence, 1\n                if outside)."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 191
    iput p1, p0, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachStatus:I

    return-object p0
.end method

.method public final breachTime(J)Lio/dronefleet/mavlink/common/FenceStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time (since boot) of last breach."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 252
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachTime:J

    return-object p0
.end method

.method public final breachType(Lio/dronefleet/mavlink/common/FenceBreach;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;
    .locals 0

    .line 226
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final breachType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/FenceBreach;",
            ">;)",
            "Lio/dronefleet/mavlink/common/FenceStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Last breach type."
        enumType = Lio/dronefleet/mavlink/common/FenceBreach;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 218
    iput-object p1, p0, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final breachType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/FenceStatus$Builder;"
        }
    .end annotation

    .line 240
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs breachType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;
    .locals 0

    .line 233
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/FenceStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lio/dronefleet/mavlink/common/FenceStatus;
    .locals 9

    .line 294
    new-instance v8, Lio/dronefleet/mavlink/common/FenceStatus;

    iget v1, p0, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachStatus:I

    iget v2, p0, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachCount:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-wide v4, p0, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachTime:J

    iget-object v6, p0, Lio/dronefleet/mavlink/common/FenceStatus$Builder;->breachMitigation:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/FenceStatus;-><init>(IILio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/FenceStatus$1;)V

    return-object v8
.end method
