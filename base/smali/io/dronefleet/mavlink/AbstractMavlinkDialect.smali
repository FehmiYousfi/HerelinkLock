.class public Lio/dronefleet/mavlink/AbstractMavlinkDialect;
.super Ljava/lang/Object;
.source "AbstractMavlinkDialect.java"

# interfaces
.implements Lio/dronefleet/mavlink/MavlinkDialect;


# instance fields
.field private final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dronefleet/mavlink/MavlinkDialect;",
            ">;"
        }
    .end annotation
.end field

.field private final messages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/dronefleet/mavlink/MavlinkDialect;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/dronefleet/mavlink/AbstractMavlinkDialect;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lio/dronefleet/mavlink/AbstractMavlinkDialect;->dependencies:Ljava/util/List;

    .line 19
    iput-object p3, p0, Lio/dronefleet/mavlink/AbstractMavlinkDialect;->messages:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public messageTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lio/dronefleet/mavlink/AbstractMavlinkDialect;->messages:Ljava/util/Map;

    .line 59
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lio/dronefleet/mavlink/AbstractMavlinkDialect;->dependencies:Ljava/util/List;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lio/dronefleet/mavlink/-$$Lambda$jtZxPhwT2tWuL3Bgur2-i5EIKhM;->INSTANCE:Lio/dronefleet/mavlink/-$$Lambda$jtZxPhwT2tWuL3Bgur2-i5EIKhM;

    .line 61
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lio/dronefleet/mavlink/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;->INSTANCE:Lio/dronefleet/mavlink/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;

    .line 62
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    .line 64
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/dronefleet/mavlink/AbstractMavlinkDialect;->name:Ljava/lang/String;

    return-object v0
.end method

.method public resolve(I)Ljava/lang/Class;
    .locals 2

    .line 29
    iget-object v0, p0, Lio/dronefleet/mavlink/AbstractMavlinkDialect;->messages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lio/dronefleet/mavlink/AbstractMavlinkDialect;->messages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 32
    :cond_0
    iget-object v0, p0, Lio/dronefleet/mavlink/AbstractMavlinkDialect;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dronefleet/mavlink/MavlinkDialect;

    .line 33
    invoke-interface {v1, p1}, Lio/dronefleet/mavlink/MavlinkDialect;->resolve(I)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public supports(I)Z
    .locals 3

    .line 44
    iget-object v0, p0, Lio/dronefleet/mavlink/AbstractMavlinkDialect;->messages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 47
    :cond_0
    iget-object v0, p0, Lio/dronefleet/mavlink/AbstractMavlinkDialect;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dronefleet/mavlink/MavlinkDialect;

    .line 48
    invoke-interface {v2, p1}, Lio/dronefleet/mavlink/MavlinkDialect;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
