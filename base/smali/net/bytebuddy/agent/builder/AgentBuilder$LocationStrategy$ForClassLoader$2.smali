.class final enum Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader$2;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3399
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;-><init>(Ljava/lang/String;ILnet/bytebuddy/agent/builder/AgentBuilder$1;)V

    return-void
.end method


# virtual methods
.method public classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 0

    .line 3402
    invoke-static {p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object p1

    return-object p1
.end method
