.class public Lnet/bytebuddy/description/field/FieldDescription$Latent;
.super Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape$AbstractBase;
.source "FieldDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Latent"
.end annotation


# instance fields
.field private final declaredAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final declaringType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final fieldName:Ljava/lang/String;

.field private final fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final modifiers:I


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape$AbstractBase;-><init>()V

    .line 296
    iput-object p1, p0, Lnet/bytebuddy/description/field/FieldDescription$Latent;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 297
    iput-object p2, p0, Lnet/bytebuddy/description/field/FieldDescription$Latent;->fieldName:Ljava/lang/String;

    .line 298
    iput p3, p0, Lnet/bytebuddy/description/field/FieldDescription$Latent;->modifiers:I

    .line 299
    iput-object p4, p0, Lnet/bytebuddy/description/field/FieldDescription$Latent;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 300
    iput-object p5, p0, Lnet/bytebuddy/description/field/FieldDescription$Latent;->declaredAnnotations:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription$Token;)V
    .locals 6

    .line 276
    invoke-virtual {p2}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getName()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {p2}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getModifiers()I

    move-result v3

    .line 278
    invoke-virtual {p2}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    .line 279
    invoke-virtual {p2}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 275
    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/description/field/FieldDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 310
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$Latent;->declaredAnnotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 241
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldDescription$Latent;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 320
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$Latent;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 325
    iget v0, p0, Lnet/bytebuddy/description/field/FieldDescription$Latent;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$Latent;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 305
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$Latent;->fieldType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->of(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method
