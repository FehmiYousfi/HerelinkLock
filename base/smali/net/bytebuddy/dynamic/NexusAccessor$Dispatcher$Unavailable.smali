.class public Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;
.super Ljava/lang/Object;
.source "NexusAccessor.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unavailable"
.end annotation


# instance fields
.field private final exception:Ljava/lang/Exception;


# direct methods
.method protected constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 281
    instance-of p1, p1, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;

    return p1
.end method

.method public clean(Ljava/lang/ref/Reference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 305
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;->exception:Ljava/lang/Exception;

    const-string v1, "Could not initialize Nexus accessor"

    invoke-direct {p1, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 281
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;->exception:Ljava/lang/Exception;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;->exception:Ljava/lang/Exception;

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

    .line 281
    iget-object v0, p0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;->exception:Ljava/lang/Exception;

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

.method public isAlive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;ILnet/bytebuddy/implementation/LoadedTypeInitializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;I",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            ")V"
        }
    .end annotation

    .line 314
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, p0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;->exception:Ljava/lang/Exception;

    const-string p3, "Could not initialize Nexus accessor"

    invoke-direct {p1, p3, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
