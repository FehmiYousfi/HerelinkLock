.class public Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;
.super Ljava/lang/Object;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Resolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LazyResolution"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;Ljava/lang/String;)V
    .locals 0

    .line 1194
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;->this$0:Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1195
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;->name:Ljava/lang/String;

    return-void
.end method

.method private getOuter()Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;
    .locals 1

    .line 1214
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;->this$0:Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1221
    :cond_1
    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;

    .line 1222
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;->name:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;->getOuter()Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    move-result-object v2

    invoke-direct {p1}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;->getOuter()Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

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
    .locals 2

    .line 1227
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-direct {p0}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;->getOuter()Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isResolved()Z
    .locals 2

    .line 1200
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;->this$0:Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;->doResolve(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->isResolved()Z

    move-result v0

    return v0
.end method

.method public resolve()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 3

    .line 1205
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyTypeDescription;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;->this$0:Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyResolution;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution$LazyTypeDescription;-><init>(Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;Ljava/lang/String;)V

    return-object v0
.end method
