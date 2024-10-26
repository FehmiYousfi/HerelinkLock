.class public Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;
.super Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;
.source "AnnotationDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Latent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;
    }
.end annotation


# instance fields
.field private final annotationType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final annotationValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;)V"
        }
    .end annotation

    .line 715
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;-><init>()V

    .line 716
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 717
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->annotationValues:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;)Ljava/util/Map;
    .locals 0

    .line 697
    iget-object p0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->annotationValues:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 735
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->annotationValues:Ljava/util/Map;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v0, :cond_0

    return-object v0

    .line 726
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 730
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value defined for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable<",
            "TT;>;"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;-><init>(Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;Ljava/lang/Class;)V

    return-object v0

    .line 741
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not represent "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->annotationType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;

    move-result-object p1

    return-object p1
.end method
