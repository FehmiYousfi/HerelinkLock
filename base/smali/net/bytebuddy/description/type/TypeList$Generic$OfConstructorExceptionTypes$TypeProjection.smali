.class Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;
.source "TypeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeProjection"
.end annotation


# instance fields
.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final erasure:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final index:I


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Constructor;I[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;I[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 801
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithEagerNavigation$OfAnnotatedElement;-><init>()V

    .line 802
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;->constructor:Ljava/lang/reflect/Constructor;

    .line 803
    iput p2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;->index:I

    .line 804
    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Constructor;I[Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeList$1;)V
    .locals 0

    .line 777
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;-><init>(Ljava/lang/reflect/Constructor;I[Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 3

    .line 817
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    iget v2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;->index:I

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 3

    .line 822
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;->constructor:Ljava/lang/reflect/Constructor;

    iget v2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;->index:I

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;->resolveExceptionType(Ljava/lang/reflect/AccessibleObject;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v0

    return-object v0
.end method

.method protected resolve()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    .line 809
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 810
    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    array-length v1, v1

    array-length v2, v0

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;->index:I

    aget-object v0, v0, v1

    .line 811
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;->getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    goto :goto_0

    .line 812
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$OfConstructorExceptionTypes$TypeProjection;->asRawType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    :goto_0
    return-object v0
.end method
