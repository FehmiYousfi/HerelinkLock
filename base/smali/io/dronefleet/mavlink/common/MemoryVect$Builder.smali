.class public final Lio/dronefleet/mavlink/common/MemoryVect$Builder;
.super Ljava/lang/Object;
.source "MemoryVect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/MemoryVect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private address:I

.field private type:I

.field private value:[I

.field private ver:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final address(I)Lio/dronefleet/mavlink/common/MemoryVect$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Starting address of the debug variables"
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 166
    iput p1, p0, Lio/dronefleet/mavlink/common/MemoryVect$Builder;->address:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/MemoryVect;
    .locals 7

    .line 215
    new-instance v6, Lio/dronefleet/mavlink/common/MemoryVect;

    iget v1, p0, Lio/dronefleet/mavlink/common/MemoryVect$Builder;->address:I

    iget v2, p0, Lio/dronefleet/mavlink/common/MemoryVect$Builder;->ver:I

    iget v3, p0, Lio/dronefleet/mavlink/common/MemoryVect$Builder;->type:I

    iget-object v4, p0, Lio/dronefleet/mavlink/common/MemoryVect$Builder;->value:[I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/MemoryVect;-><init>(III[ILio/dronefleet/mavlink/common/MemoryVect$1;)V

    return-object v6
.end method

.method public final type(I)Lio/dronefleet/mavlink/common/MemoryVect$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type code of the memory variables. for ver = 1: 0=16 x\n                int16_t, 1=16 x uint16_t, 2=16 x Q15, 3=16 x 1Q14"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 195
    iput p1, p0, Lio/dronefleet/mavlink/common/MemoryVect$Builder;->type:I

    return-object p0
.end method

.method public final value([I)Lio/dronefleet/mavlink/common/MemoryVect$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Memory contents at specified address"
        position = 0x4
        signed = true
        unitSize = 0x1
    .end annotation

    .line 210
    iput-object p1, p0, Lio/dronefleet/mavlink/common/MemoryVect$Builder;->value:[I

    return-object p0
.end method

.method public final ver(I)Lio/dronefleet/mavlink/common/MemoryVect$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Version code of the type variable. 0=unknown, type\n                ignored and assumed int16_t. 1=as below"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 180
    iput p1, p0, Lio/dronefleet/mavlink/common/MemoryVect$Builder;->ver:I

    return-object p0
.end method
