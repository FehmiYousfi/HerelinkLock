.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedType"
.end annotation


# instance fields
.field private final annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

.field private final genericArrayType:Ljava/lang/reflect/GenericArrayType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/GenericArrayType;)V
    .locals 1

    .line 3874
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;-><init>(Ljava/lang/reflect/GenericArrayType;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/GenericArrayType;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V
    .locals 0

    .line 3883
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray;-><init>()V

    .line 3884
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;->genericArrayType:Ljava/lang/reflect/GenericArrayType;

    .line 3885
    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    return-void
.end method


# virtual methods
.method public bridge synthetic getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 3856
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 3890
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;->genericArrayType:Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->ofComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    .line 3895
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfGenericArray$ForLoadedType;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->asList()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method
