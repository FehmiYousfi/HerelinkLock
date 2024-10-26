.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inversion"
.end annotation


# instance fields
.field private final matcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V
    .locals 0

    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;->matcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1047
    instance-of p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1047
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;->matcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;->matcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1047
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;->matcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            ")Z"
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;->matcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
