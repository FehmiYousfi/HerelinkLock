.class final enum Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default$2;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3341
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/agent/builder/AgentBuilder$1;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Ljava/lang/Throwable;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 0

    return-object p2
.end method