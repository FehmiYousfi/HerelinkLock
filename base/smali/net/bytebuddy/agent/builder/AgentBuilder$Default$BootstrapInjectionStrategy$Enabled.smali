.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enabled"
.end annotation


# instance fields
.field private final folder:Ljava/io/File;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/instrument/Instrumentation;)V
    .locals 0

    .line 7607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7608
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->folder:Ljava/io/File;

    .line 7609
    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->instrumentation:Ljava/lang/instrument/Instrumentation;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 7588
    instance-of p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7588
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->folder:Ljava/io/File;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->folder:Ljava/io/File;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->instrumentation:Ljava/lang/instrument/Instrumentation;

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 7588
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->folder:Ljava/io/File;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->instrumentation:Ljava/lang/instrument/Instrumentation;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public make(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 2

    .line 7614
    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->folder:Ljava/io/File;

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->BOOTSTRAP:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-static {p1, v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->of(Ljava/io/File;Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassInjector;

    move-result-object p1

    return-object p1
.end method
