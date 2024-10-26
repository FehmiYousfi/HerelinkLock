.class public interface abstract Lse/vidstige/jadb/server/AdbResponder;
.super Ljava/lang/Object;
.source "AdbResponder.java"


# virtual methods
.method public abstract getDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lse/vidstige/jadb/server/AdbDeviceResponder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()I
.end method

.method public abstract onCommand(Ljava/lang/String;)V
.end method
