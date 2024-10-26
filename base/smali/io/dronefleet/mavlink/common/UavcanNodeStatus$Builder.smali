.class public final Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
.super Ljava/lang/Object;
.source "UavcanNodeStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/UavcanNodeStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private health:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UavcanNodeHealth;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UavcanNodeMode;",
            ">;"
        }
    .end annotation
.end field

.field private subMode:I

.field private timeUsec:Ljava/math/BigInteger;

.field private uptimeSec:J

.field private vendorSpecificStatusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/UavcanNodeStatus;
    .locals 10

    .line 340
    new-instance v9, Lio/dronefleet/mavlink/common/UavcanNodeStatus;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-wide v2, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->uptimeSec:J

    iget-object v4, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->health:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v5, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    iget v6, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->subMode:I

    iget v7, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->vendorSpecificStatusCode:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/UavcanNodeStatus;-><init>(Ljava/math/BigInteger;JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IILio/dronefleet/mavlink/common/UavcanNodeStatus$1;)V

    return-object v9
.end method

.method public final health(Lio/dronefleet/mavlink/common/UavcanNodeHealth;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    .locals 0

    .line 260
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->health(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final health(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UavcanNodeHealth;",
            ">;)",
            "Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Generalized node health\n                status."
        enumType = Lio/dronefleet/mavlink/common/UavcanNodeHealth;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 252
    iput-object p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->health:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final health(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;"
        }
    .end annotation

    .line 274
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->health(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs health([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    .locals 0

    .line 267
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->health(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mode(Lio/dronefleet/mavlink/common/UavcanNodeMode;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    .locals 0

    .line 295
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/UavcanNodeMode;",
            ">;)",
            "Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Generalized operating mode."
        enumType = Lio/dronefleet/mavlink/common/UavcanNodeMode;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 287
    iput-object p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->mode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final mode(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;"
        }
    .end annotation

    .line 309
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs mode([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    .locals 0

    .line 302
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->mode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final subMode(I)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Not used currently."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 321
    iput p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->subMode:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 223
    iput-object p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final uptimeSec(J)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time since the start-up of the\n                node."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 237
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->uptimeSec:J

    return-object p0
.end method

.method public final vendorSpecificStatusCode(I)Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vendor-specific status\n                information."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 335
    iput p1, p0, Lio/dronefleet/mavlink/common/UavcanNodeStatus$Builder;->vendorSpecificStatusCode:I

    return-object p0
.end method
