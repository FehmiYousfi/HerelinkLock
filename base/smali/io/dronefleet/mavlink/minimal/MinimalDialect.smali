.class public final Lio/dronefleet/mavlink/minimal/MinimalDialect;
.super Lio/dronefleet/mavlink/AbstractMavlinkDialect;
.source "MinimalDialect.java"


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

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/dronefleet/mavlink/minimal/MinimalDialect;->dependencies:Ljava/util/List;

    .line 21
    new-instance v0, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;-><init>()V

    const/4 v1, 0x0

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/minimal/Heartbeat;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/dronefleet/mavlink/minimal/MinimalDialect;->messages:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    sget-object v0, Lio/dronefleet/mavlink/minimal/MinimalDialect;->dependencies:Ljava/util/List;

    sget-object v1, Lio/dronefleet/mavlink/minimal/MinimalDialect;->messages:Ljava/util/Map;

    const-string v2, "minimal"

    invoke-direct {p0, v2, v0, v1}, Lio/dronefleet/mavlink/AbstractMavlinkDialect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
