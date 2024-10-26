.class public final Lio/dronefleet/mavlink/common/AuthKey$Builder;
.super Ljava/lang/Object;
.source "AuthKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/AuthKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/AuthKey;
    .locals 3

    .line 102
    new-instance v0, Lio/dronefleet/mavlink/common/AuthKey;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/AuthKey$Builder;->key:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dronefleet/mavlink/common/AuthKey;-><init>(Ljava/lang/String;Lio/dronefleet/mavlink/common/AuthKey$1;)V

    return-object v0
.end method

.method public final key(Ljava/lang/String;)Lio/dronefleet/mavlink/common/AuthKey$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "key"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 97
    iput-object p1, p0, Lio/dronefleet/mavlink/common/AuthKey$Builder;->key:Ljava/lang/String;

    return-object p0
.end method
