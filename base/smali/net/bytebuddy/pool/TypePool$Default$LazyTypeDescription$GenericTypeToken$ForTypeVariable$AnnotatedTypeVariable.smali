.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$AnnotatedTypeVariable;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnnotatedTypeVariable"
.end annotation


# instance fields
.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private final typePool:Lnet/bytebuddy/pool/TypePool;

.field private final typeVariable:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")V"
        }
    .end annotation

    .line 4193
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable;-><init>()V

    .line 4194
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$AnnotatedTypeVariable;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 4195
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$AnnotatedTypeVariable;->annotationTokens:Ljava/util/List;

    .line 4196
    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$AnnotatedTypeVariable;->typeVariable:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 4216
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$AnnotatedTypeVariable;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$AnnotatedTypeVariable;->annotationTokens:Ljava/util/List;

    invoke-static {v0, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;->asListOfNullable(Lnet/bytebuddy/pool/TypePool;Ljava/util/List;)Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 4211
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$AnnotatedTypeVariable;->typeVariable:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeVariableSource()Lnet/bytebuddy/description/TypeVariableSource;
    .locals 1

    .line 4206
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$AnnotatedTypeVariable;->typeVariable:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getTypeVariableSource()Lnet/bytebuddy/description/TypeVariableSource;

    move-result-object v0

    return-object v0
.end method

.method public getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 4201
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$GenericTypeToken$ForTypeVariable$AnnotatedTypeVariable;->typeVariable:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method
