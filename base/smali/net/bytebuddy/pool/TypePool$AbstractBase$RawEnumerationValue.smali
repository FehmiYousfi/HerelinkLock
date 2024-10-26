.class public Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RawEnumerationValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue$LazyEnumerationDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<",
        "Lnet/bytebuddy/description/enumeration/EnumerationDescription;",
        "Ljava/lang/Enum<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final descriptor:Ljava/lang/String;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 560
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;-><init>()V

    .line 561
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 562
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->descriptor:Ljava/lang/String;

    .line 563
    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;)Ljava/lang/String;
    .locals 0

    .line 536
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->value:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;)Ljava/lang/String;
    .locals 0

    .line 536
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->descriptor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;)Lnet/bytebuddy/pool/TypePool;
    .locals 0

    .line 536
    iget-object p0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->typePool:Lnet/bytebuddy/pool/TypePool;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 586
    instance-of v0, p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->resolve()Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    move-result-object v0

    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 591
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->resolve()Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 576
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->value:Ljava/lang/String;

    .line 577
    invoke-static {p1, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$Loaded;-><init>(Ljava/lang/Enum;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$IncompatibleRuntimeType;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$IncompatibleRuntimeType;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 580
    :catch_0
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$UnknownRuntimeEnumeration;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->value:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForEnumerationDescription$UnknownRuntimeEnumeration;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 536
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->resolve()Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lnet/bytebuddy/description/enumeration/EnumerationDescription;
    .locals 1

    .line 568
    new-instance v0, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue$LazyEnumerationDescription;

    invoke-direct {v0, p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue$LazyEnumerationDescription;-><init>(Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$RawEnumerationValue;->resolve()Lnet/bytebuddy/description/enumeration/EnumerationDescription;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
