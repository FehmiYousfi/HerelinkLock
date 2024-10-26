.class final enum Lnet/bytebuddy/TypeCache$Sort$2;
.super Lnet/bytebuddy/TypeCache$Sort;
.source "TypeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/TypeCache$Sort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/TypeCache$Sort;-><init>(Ljava/lang/String;ILnet/bytebuddy/TypeCache$1;)V

    return-void
.end method


# virtual methods
.method protected wrap(Ljava/lang/Class;)Ljava/lang/ref/Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
