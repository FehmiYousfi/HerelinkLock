.class interface abstract Lse/vidstige/jadb/HostConnectionCommand$ResponseValidator;
.super Ljava/lang/Object;
.source "HostConnectionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/vidstige/jadb/HostConnectionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ResponseValidator"
.end annotation


# virtual methods
.method public abstract validate(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lse/vidstige/jadb/ConnectionToRemoteDeviceException;
        }
    .end annotation
.end method
