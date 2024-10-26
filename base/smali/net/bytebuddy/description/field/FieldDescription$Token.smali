.class public Lnet/bytebuddy/description/field/FieldDescription$Token;
.super Ljava/lang/Object;
.source "FieldDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/ByteCodeElement$Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/ByteCodeElement$Token<",
        "Lnet/bytebuddy/description/field/FieldDescription$Token;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final type:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 1

    .line 428
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)V"
        }
    .end annotation

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    .line 441
    iput p2, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->modifiers:I

    .line 442
    iput-object p3, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 443
    iput-object p4, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->annotations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .locals 0

    .line 398
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/field/FieldDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/field/FieldDescription$Token;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/field/FieldDescription$Token;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/description/field/FieldDescription$Token;"
        }
    .end annotation

    .line 484
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    iget v2, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->modifiers:I

    iget-object v3, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 486
    invoke-interface {v3, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->annotations:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-object v0
.end method

.method public asSignatureToken(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;
    .locals 4

    .line 497
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    new-instance v3, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;

    invoke-direct {v3, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 503
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 504
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$Token;

    .line 505
    iget v2, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->modifiers:I

    iget v3, p1, Lnet/bytebuddy/description/field/FieldDescription$Token;->modifiers:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    .line 506
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p1, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 507
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->annotations:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/description/field/FieldDescription$Token;->annotations:Ljava/util/List;

    .line 508
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 479
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->annotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 470
    iget v0, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 452
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 461
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 513
    iget-object v0, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 514
    iget v1, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->modifiers:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 515
    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->type:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 516
    iget-object v1, p0, Lnet/bytebuddy/description/field/FieldDescription$Token;->annotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
