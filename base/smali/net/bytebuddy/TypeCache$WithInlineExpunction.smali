.class public Lnet/bytebuddy/TypeCache$WithInlineExpunction;
.super Lnet/bytebuddy/TypeCache;
.source "TypeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/TypeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithInlineExpunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/TypeCache<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/TypeCache$Sort;)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lnet/bytebuddy/TypeCache;-><init>(Lnet/bytebuddy/TypeCache$Sort;)V

    return-void
.end method


# virtual methods
.method public find(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TS;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 328
    :try_start_0
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/TypeCache;->find(Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    throw p1
.end method

.method public findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TS;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 346
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/TypeCache;->findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    throw p1
.end method

.method public findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TS;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 355
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/TypeCache;->findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    throw p1
.end method

.method public insert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "TS;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 337
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/TypeCache;->insert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;->expungeStaleEntries()V

    throw p1
.end method
