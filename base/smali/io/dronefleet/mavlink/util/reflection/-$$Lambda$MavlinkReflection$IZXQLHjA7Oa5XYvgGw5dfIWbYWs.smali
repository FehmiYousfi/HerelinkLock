.class public final synthetic Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$IZXQLHjA7Oa5XYvgGw5dfIWbYWs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$IZXQLHjA7Oa5XYvgGw5dfIWbYWs;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$IZXQLHjA7Oa5XYvgGw5dfIWbYWs;->f$0:Ljava/lang/Class;

    invoke-static {v0, p1}, Lio/dronefleet/mavlink/util/reflection/MavlinkReflection;->lambda$IZXQLHjA7Oa5XYvgGw5dfIWbYWs(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method
