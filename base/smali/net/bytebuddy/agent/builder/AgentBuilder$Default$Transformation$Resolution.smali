.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Resolution"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Unresolved;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Decoratable;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;
    }
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Ljava/security/AccessControlContext;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)[B
.end method

.method public abstract asDecoratorOf(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
.end method

.method public abstract getSort()Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Sort;
.end method

.method public abstract prepend(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution$Decoratable;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Resolution;
.end method
