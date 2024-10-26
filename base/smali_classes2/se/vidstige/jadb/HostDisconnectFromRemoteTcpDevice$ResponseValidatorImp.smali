.class final Lse/vidstige/jadb/HostDisconnectFromRemoteTcpDevice$ResponseValidatorImp;
.super Lse/vidstige/jadb/HostConnectionCommand$ResponseValidatorBase;
.source "HostDisconnectFromRemoteTcpDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/vidstige/jadb/HostDisconnectFromRemoteTcpDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResponseValidatorImp"
.end annotation


# static fields
.field private static final ALREADY_DISCONNECTED:Ljava/lang/String; = "error: no such device"

.field private static final SUCCESSFULLY_DISCONNECTED:Ljava/lang/String; = "disconnected"


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "disconnected"

    const-string v1, "error: no such device"

    .line 27
    invoke-direct {p0, v0, v1}, Lse/vidstige/jadb/HostConnectionCommand$ResponseValidatorBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
