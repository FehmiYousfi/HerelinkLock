.class public Lorg/cubepilot/security/Security;
.super Ljava/lang/Object;
.source "Security.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native verifySecurity()I
.end method


# virtual methods
.method public doSecurityCheck()I
    .locals 1

    :try_start_0
    const-string v0, "security"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lorg/cubepilot/security/Security;->verifySecurity()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method
