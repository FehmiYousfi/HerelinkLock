.class public Lnet/bytebuddy/dynamic/NexusAccessor;
.super Ljava/lang/Object;
.source "NexusAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;,
        Lnet/bytebuddy/dynamic/NexusAccessor$InitializationAppender;
    }
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;


# instance fields
.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;

    sput-object v0, Lnet/bytebuddy/dynamic/NexusAccessor;->DISPATCHER:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    sget-object v0, Lnet/bytebuddy/dynamic/Nexus;->NO_QUEUE:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/NexusAccessor;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lnet/bytebuddy/dynamic/NexusAccessor;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public static clean(Ljava/lang/ref/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 83
    sget-object v0, Lnet/bytebuddy/dynamic/NexusAccessor;->DISPATCHER:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;

    invoke-interface {v0, p0}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;->clean(Ljava/lang/ref/Reference;)V

    return-void
.end method

.method public static isAlive()Z
    .locals 1

    .line 72
    sget-object v0, Lnet/bytebuddy/dynamic/NexusAccessor;->DISPATCHER:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;->isAlive()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 34
    instance-of p1, p1, Lnet/bytebuddy/dynamic/NexusAccessor;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 34
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/NexusAccessor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/NexusAccessor;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/NexusAccessor;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/NexusAccessor;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

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

    .line 34
    iget-object v0, p0, Lnet/bytebuddy/dynamic/NexusAccessor;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

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

.method public register(Ljava/lang/String;Ljava/lang/ClassLoader;ILnet/bytebuddy/implementation/LoadedTypeInitializer;)V
    .locals 7

    .line 95
    invoke-interface {p4}, Lnet/bytebuddy/implementation/LoadedTypeInitializer;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v1, Lnet/bytebuddy/dynamic/NexusAccessor;->DISPATCHER:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/NexusAccessor;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;->register(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;ILnet/bytebuddy/implementation/LoadedTypeInitializer;)V

    :cond_0
    return-void
.end method
