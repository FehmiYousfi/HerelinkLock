.class Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$OfAnnotatedElement;
.source "TypeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeProjection"
.end annotation


# instance fields
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

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;I[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 714
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$OfAnnotatedElement;-><init>()V

    .line 715
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->type:Ljava/lang/Class;

    .line 716
    iput p2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->index:I

    .line 717
    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;I[Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeList$1;)V
    .locals 0

    .line 690
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;-><init>(Ljava/lang/Class;I[Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 3

    .line 730
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    iget v2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->index:I

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 3

    .line 735
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->type:Ljava/lang/Class;

    iget v2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->index:I

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;->resolveInterfaceType(Ljava/lang/Class;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v0

    return-object v0
.end method

.method protected resolve()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    .line 722
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 723
    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    array-length v1, v1

    array-length v2, v0

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->index:I

    aget-object v0, v0, v1

    .line 724
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    goto :goto_0

    .line 725
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->asRawType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    :goto_0
    return-object v0
.end method
