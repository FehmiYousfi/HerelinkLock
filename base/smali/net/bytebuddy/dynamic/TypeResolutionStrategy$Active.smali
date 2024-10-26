.class public Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;
.super Ljava/lang/Object;
.source "TypeResolutionStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/TypeResolutionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/TypeResolutionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Active"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;
    }
.end annotation


# instance fields
.field private final nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    new-instance v0, Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-direct {v0}, Lnet/bytebuddy/dynamic/NexusAccessor;-><init>()V

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;-><init>(Lnet/bytebuddy/dynamic/NexusAccessor;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/dynamic/NexusAccessor;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 91
    instance-of p1, p1, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 91
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

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

    .line 91
    iget-object v0, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

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

.method public resolve()Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;
    .locals 3

    .line 118
    new-instance v0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;-><init>(Lnet/bytebuddy/dynamic/NexusAccessor;I)V

    return-object v0
.end method
