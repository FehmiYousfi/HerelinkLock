.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;
.super Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ParameterArgumentTypeList"
.end annotation


# instance fields
.field private final annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

.field private final argumentType:[Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>([Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V
    .locals 0

    .line 4576
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;-><init>()V

    .line 4577
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;->argumentType:[Ljava/lang/reflect/Type;

    .line 4578
    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 4558
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;->get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 4584
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;->argumentType:[Ljava/lang/reflect/Type;

    aget-object v0, v0, p1

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    invoke-interface {v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->ofTypeArgument(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 4589
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;->argumentType:[Ljava/lang/reflect/Type;

    array-length v0, v0

    return v0
.end method
