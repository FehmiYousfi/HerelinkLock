.class public final Lio/dronefleet/mavlink/common/PowerStatus$Builder;
.super Ljava/lang/Object;
.source "PowerStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/PowerStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavPowerStatus;",
            ">;"
        }
    .end annotation
.end field

.field private vcc:I

.field private vservo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/PowerStatus;
    .locals 5

    .line 195
    new-instance v0, Lio/dronefleet/mavlink/common/PowerStatus;

    iget v1, p0, Lio/dronefleet/mavlink/common/PowerStatus$Builder;->vcc:I

    iget v2, p0, Lio/dronefleet/mavlink/common/PowerStatus$Builder;->vservo:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/PowerStatus$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/common/PowerStatus;-><init>(IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/PowerStatus$1;)V

    return-object v0
.end method

.method public final flags(Lio/dronefleet/mavlink/common/MavPowerStatus;)Lio/dronefleet/mavlink/common/PowerStatus$Builder;
    .locals 0

    .line 177
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/PowerStatus$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/PowerStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/PowerStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavPowerStatus;",
            ">;)",
            "Lio/dronefleet/mavlink/common/PowerStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of\n                power supply status flags."
        enumType = Lio/dronefleet/mavlink/common/MavPowerStatus;
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 169
    iput-object p1, p0, Lio/dronefleet/mavlink/common/PowerStatus$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/PowerStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/PowerStatus$Builder;"
        }
    .end annotation

    .line 191
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/PowerStatus$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/PowerStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/PowerStatus$Builder;
    .locals 0

    .line 184
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/PowerStatus$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/PowerStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final vcc(I)Lio/dronefleet/mavlink/common/PowerStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "5V rail voltage."
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 141
    iput p1, p0, Lio/dronefleet/mavlink/common/PowerStatus$Builder;->vcc:I

    return-object p0
.end method

.method public final vservo(I)Lio/dronefleet/mavlink/common/PowerStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo rail voltage."
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 154
    iput p1, p0, Lio/dronefleet/mavlink/common/PowerStatus$Builder;->vservo:I

    return-object p0
.end method
