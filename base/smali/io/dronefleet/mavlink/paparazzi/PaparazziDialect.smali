.class public final Lio/dronefleet/mavlink/paparazzi/PaparazziDialect;
.super Lio/dronefleet/mavlink/AbstractMavlinkDialect;
.source "PaparazziDialect.java"


# static fields
.field private static final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dronefleet/mavlink/MavlinkDialect;",
            ">;"
        }
    .end annotation
.end field

.field private static final messages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lio/dronefleet/mavlink/MavlinkDialect;

    .line 17
    new-instance v1, Lio/dronefleet/mavlink/common/CommonDialect;

    invoke-direct {v1}, Lio/dronefleet/mavlink/common/CommonDialect;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/dronefleet/mavlink/paparazzi/PaparazziDialect;->dependencies:Ljava/util/List;

    .line 23
    new-instance v0, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;-><init>()V

    const/16 v1, 0xb4

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/paparazzi/ScriptItem;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xb5

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/paparazzi/ScriptRequest;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xb6

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/paparazzi/ScriptRequestList;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xb7

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/paparazzi/ScriptCount;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xb8

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/paparazzi/ScriptCurrent;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/dronefleet/mavlink/paparazzi/PaparazziDialect;->messages:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 32
    sget-object v0, Lio/dronefleet/mavlink/paparazzi/PaparazziDialect;->dependencies:Ljava/util/List;

    sget-object v1, Lio/dronefleet/mavlink/paparazzi/PaparazziDialect;->messages:Ljava/util/Map;

    const-string v2, "paparazzi"

    invoke-direct {p0, v2, v0, v1}, Lio/dronefleet/mavlink/AbstractMavlinkDialect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
