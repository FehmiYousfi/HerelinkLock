.class public interface abstract Lnet/bytebuddy/pool/TypePool$CacheProvider;
.super Ljava/lang/Object;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CacheProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;,
        Lnet/bytebuddy/pool/TypePool$CacheProvider$NoOp;
    }
.end annotation


# static fields
.field public static final UNRESOLVED:Lnet/bytebuddy/pool/TypePool$Resolution;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract find(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
.end method

.method public abstract register(Ljava/lang/String;Lnet/bytebuddy/pool/TypePool$Resolution;)Lnet/bytebuddy/pool/TypePool$Resolution;
.end method
