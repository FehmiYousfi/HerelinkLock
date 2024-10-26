.class public final synthetic Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$jAeLV5uYf2FrDOSLeFZkoScy9WI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/Enum;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Enum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$jAeLV5uYf2FrDOSLeFZkoScy9WI;->f$0:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$jAeLV5uYf2FrDOSLeFZkoScy9WI;->f$0:Ljava/lang/Enum;

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Lio/dronefleet/mavlink/util/reflection/MavlinkReflection;->lambda$getEnumEntry$2(Ljava/lang/Enum;Ljava/lang/reflect/Field;)Z

    move-result p1

    return p1
.end method
