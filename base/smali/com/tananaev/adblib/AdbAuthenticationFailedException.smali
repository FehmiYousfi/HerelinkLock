.class public Lcom/tananaev/adblib/AdbAuthenticationFailedException;
.super Ljava/lang/RuntimeException;
.source "AdbAuthenticationFailedException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Initial authentication attempt rejected by peer"

    .line 13
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
