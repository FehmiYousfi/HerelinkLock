.class public Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation


# instance fields
.field private final binaryRepresentation:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;->binaryRepresentation:[B

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 101
    instance-of p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 101
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;->binaryRepresentation:[B

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;->binaryRepresentation:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 101
    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;->binaryRepresentation:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resolve()[B
    .locals 1

    .line 127
    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;->binaryRepresentation:[B

    return-object v0
.end method
