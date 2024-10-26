.class public Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;
.super Ljava/lang/Object;
.source "RebaseImplementationTarget.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Target$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final methodRebaseResolver:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;->methodRebaseResolver:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 174
    instance-of p1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 174
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;->methodRebaseResolver:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;->methodRebaseResolver:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

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

    .line 174
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;->methodRebaseResolver:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

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

.method public make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Target;
    .locals 1

    .line 193
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$Factory;->methodRebaseResolver:Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;

    invoke-static {p1, p2, p3, v0}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;->of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver;)Lnet/bytebuddy/implementation/Implementation$Target;

    move-result-object p1

    return-object p1
.end method
