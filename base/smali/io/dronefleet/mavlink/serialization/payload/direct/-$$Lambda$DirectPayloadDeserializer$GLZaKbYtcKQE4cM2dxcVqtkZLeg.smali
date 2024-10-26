.class public final synthetic Lio/dronefleet/mavlink/serialization/payload/direct/-$$Lambda$DirectPayloadDeserializer$GLZaKbYtcKQE4cM2dxcVqtkZLeg;
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

    iput-object p1, p0, Lio/dronefleet/mavlink/serialization/payload/direct/-$$Lambda$DirectPayloadDeserializer$GLZaKbYtcKQE4cM2dxcVqtkZLeg;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/dronefleet/mavlink/serialization/payload/direct/-$$Lambda$DirectPayloadDeserializer$GLZaKbYtcKQE4cM2dxcVqtkZLeg;->f$0:Ljava/lang/Class;

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, p1}, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;->lambda$getBuilderMethods$0(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method
