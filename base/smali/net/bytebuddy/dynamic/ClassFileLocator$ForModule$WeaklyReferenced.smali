.class public Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;
.super Ljava/lang/ref/WeakReference;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeaklyReferenced"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lnet/bytebuddy/dynamic/ClassFileLocator;"
    }
.end annotation


# instance fields
.field private final hashCode:I


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 521
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 522
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;->hashCode:I

    return-void
.end method

.method public static of(Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 2

    .line 533
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaModule;->isNamed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaModule;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaModule;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaModule;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;

    .line 536
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 534
    :cond_1
    :goto_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule;

    invoke-direct {v0, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule;-><init>(Lnet/bytebuddy/utility/JavaModule;)V

    :goto_1
    return-object v0

    .line 538
    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaModule;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 563
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 564
    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;

    .line 565
    invoke-virtual {p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 566
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 557
    iget v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;->hashCode:I

    return v0
.end method

.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/utility/JavaModule;->of(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule;->locate(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v0

    :goto_0
    return-object v0
.end method
