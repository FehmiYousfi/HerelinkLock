.class public final synthetic Lorg/cubepilot/herelinksettings/-$$Lambda$RemoteID$pf3g9LOmJYbQHYBpMjwUsxbi3l0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$RemoteID$pf3g9LOmJYbQHYBpMjwUsxbi3l0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$RemoteID$pf3g9LOmJYbQHYBpMjwUsxbi3l0;->f$0:Ljava/util/List;

    check-cast p1, Lio/dronefleet/mavlink/common/MavOdidDescType;

    invoke-static {v0, p1}, Lorg/cubepilot/herelinksettings/RemoteID;->lambda$onStart$4(Ljava/util/List;Lio/dronefleet/mavlink/common/MavOdidDescType;)V

    return-void
.end method
