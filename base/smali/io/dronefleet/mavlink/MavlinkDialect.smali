.class public interface abstract Lio/dronefleet/mavlink/MavlinkDialect;
.super Ljava/lang/Object;
.source "MavlinkDialect.java"


# virtual methods
.method public abstract messageTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract resolve(I)Ljava/lang/Class;
.end method

.method public abstract supports(I)Z
.end method
