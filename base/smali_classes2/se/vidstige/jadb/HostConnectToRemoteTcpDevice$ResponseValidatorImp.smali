.class final Lse/vidstige/jadb/HostConnectToRemoteTcpDevice$ResponseValidatorImp;
.super Lse/vidstige/jadb/HostConnectionCommand$ResponseValidatorBase;
.source "HostConnectToRemoteTcpDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/vidstige/jadb/HostConnectToRemoteTcpDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResponseValidatorImp"
.end annotation


# static fields
.field private static final ALREADY_CONNECTED:Ljava/lang/String; = "already connected to"

.field private static final SUCCESSFULLY_CONNECTED:Ljava/lang/String; = "connected to"


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "connected to"

    const-string v1, "already connected to"

    .line 26
    invoke-direct {p0, v0, v1}, Lse/vidstige/jadb/HostConnectionCommand$ResponseValidatorBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
