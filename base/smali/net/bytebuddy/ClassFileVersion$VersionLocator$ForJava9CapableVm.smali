.class public Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;
.super Ljava/lang/Object;
.source "ClassFileVersion.java"

# interfaces
.implements Lnet/bytebuddy/ClassFileVersion$VersionLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/ClassFileVersion$VersionLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava9CapableVm"
.end annotation


# static fields
.field private static final STATIC_METHOD:Ljava/lang/Object;


# instance fields
.field private final current:Ljava/lang/reflect/Method;

.field private final major:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

    .line 331
    iput-object p2, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->major:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 305
    instance-of p1, p1, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 305
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

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
    iget-object v1, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->major:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->major:Ljava/lang/reflect/Method;

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

    .line 305
    iget-object v0, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

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

    iget-object v3, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->major:Ljava/lang/reflect/Method;

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

.method public locate()Lnet/bytebuddy/ClassFileVersion;
    .locals 5

    .line 337
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->major:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->current:Ljava/lang/reflect/Method;

    sget-object v2, Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;->STATIC_METHOD:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->ofJavaVersion(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 341
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not look up VM version"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 339
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not access VM version lookup"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
